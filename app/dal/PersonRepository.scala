package dal

import javax.inject.{ Inject, Singleton }
import play.api.db.slick.DatabaseConfigProvider
import slick.driver.JdbcProfile

import models.{Vehicle, Person, Model}
import slick.model.ForeignKeyAction


import scala.concurrent.{ Future, ExecutionContext }

/**
 * A repository for people.
 *
 * @param dbConfigProvider The Play db config provider. Play will inject this for you.
 */
@Singleton
class PersonRepository @Inject() (dbConfigProvider: DatabaseConfigProvider)(implicit ec: ExecutionContext) {
  // We want the JdbcProfile for this provider
  private val dbConfig = dbConfigProvider.get[JdbcProfile]

  // These imports are important, the first one brings db into scope, which will let you do the actual db operations.
  // The second one brings the Slick DSL into scope, which lets you define the table and other queries.
  import dbConfig._
  import driver.api._

  /**
   * Here we define the table. It will have a name of people
   */
  private class PeopleTable(tag: Tag) extends Table[Person](tag, "people") {

    /** The ID column, which is the primary key, and auto incremented */
    def id = column[Long]("id", O.PrimaryKey, O.AutoInc)

    /** The name column */
    def name = column[String]("name")

    /** The age column */
    def age = column[Int]("age")

    /**
     * This is the tables default "projection".
     *
     * It defines how the columns are converted to and from the Person object.
     *
     * In this case, we are simply passing the id, name and page parameters to the Person case classes
     * apply and unapply methods.
     */
    def * = (id, name, age) <> ((Person.apply _).tupled, Person.unapply)
  }

  /**
   * The starting point for all queries on the people table.
   */
  private val people = TableQuery[PeopleTable]

  import slick.jdbc.{GetResult => GR}

    /** Entity class storing rows of table Models
   *  @param id Database column id SqlType(INTEGER), AutoInc, PrimaryKey
   *  @param model Database column model SqlType(VARCHAR) */
  case class ModelsRow(id: Int, model: String)
  /** GetResult implicit for fetching ModelsRow objects using plain SQL queries */
  implicit def GetResultModelsRow(implicit e0: GR[Int], e1: GR[String]): GR[ModelsRow] = GR{
    prs => import prs._
    ModelsRow.tupled((<<[Int], <<[String]))
  }

    /** Table description of table MODELS. Objects of this class serve as prototypes for rows in queries. */
  private class Models(_tableTag: Tag) extends Table[ModelsRow](_tableTag, "MODELS") {
    def * = (id, model) <> (ModelsRow.tupled, ModelsRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = (Rep.Some(id), Rep.Some(model)).shaped.<>({r=>import r._; _1.map(_=> ModelsRow.tupled((_1.get, _2.get)))}, (_:Any) =>
  throw new Exception("Inserting into ? projection not supported."))

    /** Database column id SqlType(INTEGER), AutoInc, PrimaryKey */
    val id: Rep[Int] = column[Int]("id", O.AutoInc, O.PrimaryKey)
    /** Database column model SqlType(VARCHAR) */
    val model: Rep[String] = column[String]("model")
  }
  /** Collection-like TableQuery object for table Models */
  private lazy val Models = new TableQuery(tag => new Models(tag))

  /** Entity class storing rows of table Vehicles
    *  @param license Database column license SqlType(CHAR), PrimaryKey, Length(10,false)
    *  @param model Database column model SqlType(INTEGER)
    *  @param `registration-date` Database column registration-date SqlType(DATE)
    *  @param `mot-date` Database column mot-date SqlType(DATE) */
  case class VehiclesRow(license: String, model: Int, `registration-date`: java.sql.Date, `mot-date`: java.sql.Date)
  /** GetResult implicit for fetching VehiclesRow objects using plain SQL queries */
  implicit def GetResultVehiclesRow(implicit e0: GR[String], e1: GR[Int], e2: GR[java.sql.Date]): GR[VehiclesRow] = GR{
    prs => import prs._
      VehiclesRow.tupled((<<[String], <<[Int], <<[java.sql.Date], <<[java.sql.Date]))
  }
  /** Table description of table VEHICLES. Objects of this class serve as prototypes for rows in queries. */
  private class Vehicles(_tableTag: Tag) extends Table[VehiclesRow](_tableTag, "VEHICLES") {
    def * = (license, model, `registration-date`, `mot-date`) <> (VehiclesRow.tupled, VehiclesRow.unapply)
    /** Maps whole row to an option. Useful for outer joins. */
    def ? = (Rep.Some(license), Rep.Some(model), Rep.Some(`registration-date`), Rep.Some(`mot-date`)).shaped.<>({r=>import r._; _1.map(_=> VehiclesRow.tupled((_1.get, _2.get, _3.get, _4.get)))}, (_:Any) =>  throw new Exception("Inserting into ? projection not supported."))

    /** Database column license SqlType(CHAR), PrimaryKey, Length(10,false) */
    val license: Rep[String] = column[String]("license", O.PrimaryKey, O.Length(10,varying=false))
    /** Database column model SqlType(INTEGER) */
    val model: Rep[Int] = column[Int]("model")
    /** Database column registration-date SqlType(DATE) */
    val `registration-date`: Rep[java.sql.Date] = column[java.sql.Date]("registration-date")
    /** Database column mot-date SqlType(DATE) */
    val `mot-date`: Rep[java.sql.Date] = column[java.sql.Date]("mot-date")

    /** Foreign key referencing Models (database name model) */
    lazy val modelsFk = foreignKey("model", model, Models)(r => r.id, onUpdate=slick.model.ForeignKeyAction.Restrict, onDelete=slick.model.ForeignKeyAction.Restrict)
  }
  /** Collection-like TableQuery object for table Vehicles */
  private lazy val Vehicles = new TableQuery(tag => new Vehicles(tag))

  /**
   * Create a person with the given name and age.
   *
   * This is an asynchronous operation, it will return a future of the created person, which can be used to obtain the
   * id for that person.
   */
  def create(name: String, age: Int): Future[Person] = db.run {
    // We create a projection of just the name and age columns, since we're not inserting a value for the id column
    (people.map(p => (p.name, p.age))
      // Now define it to return the id, because we want to know what id was generated for the person
      returning people.map(_.id)
      // And we define a transformation for the returned value, which combines our original parameters with the
      // returned id
      into ((nameAge, id) => Person(id, nameAge._1, nameAge._2))
    // And finally, insert the person into the database
    ) += (name, age)
  }

  /**
   * List all the people in the database.
   */
  def list(): Future[Seq[Person]] = db.run {
    people.result
  }

  def getModels =
    db.run(
      Models.result.map( _.map( m => Model(m.model))) )

  private val vehiclesQuery = for {
    (v, m) <- Vehicles join Models
  } yield (v.license, m.model, v.`registration-date`, v.`mot-date`)


  def getVehicleQuery(license: String) =
    vehiclesQuery.filter( _._1 === license.toUpperCase.replaceAll(" ",""))

  def getVehicle(license: String) = db.run(
    getVehicleQuery(license).result.headOption.map( _.map( x => (Vehicle.applym _).tupled(x) ) ) )


}
