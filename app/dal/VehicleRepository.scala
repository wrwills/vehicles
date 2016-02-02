package dal

import java.util.Date
import javax.inject.{ Inject, Singleton }
import models.Model
import play.api.db.slick.DatabaseConfigProvider
import slick.driver.JdbcProfile

//import models.Vehicle

import scala.concurrent.{ Future, ExecutionContext }

/**
  * A repository for people.
  *
  * @param dbConfigProvider The Play db config provider. Play will inject this for you.
  */
@Singleton
class VehicleRepository @Inject()(dbConfigProvider: DatabaseConfigProvider)(implicit ec: ExecutionContext) {
  // We want the JdbcProfile for this provider
  private val dbConfig = dbConfigProvider.get[JdbcProfile]

  import dbConfig._
  import driver.api._

  private implicit val JavaUtilDateMapper =
    MappedColumnType .base[java.util.Date, java.sql.Timestamp] (
      d => new java.sql.Timestamp(d.getTime),
      d => new java.util.Date(d.getTime))

  type VehicleData = (String,Int,Date,Date)
  /**
    * Here we define the table. It will have a name of people
    */
  private class VehicleTable(tag: Tag) extends Table[VehicleData](tag, "vehicles") {

    /** The ID column, which is the primary key, and auto incremented */
    def license = column[String]("license", O.PrimaryKey)

    def modelId = column[Int]("model")

    def registrationDate = column[Date]("registration-date")

    def motDueDate = column[Date]("mot-date")

    def model = foreignKey("model",modelId,models)(_.id)

    def * = (license, modelId, registrationDate, motDueDate) // <> ((Vehicle.apply _).tupled, Vehicle.unapply)
  }

  private lazy val vehicles = TableQuery[VehicleTable]

  private class ModelTable(tag: Tag) extends Table[(Int,String)](tag, "models") {
    def id = column[Int]("id", O.PrimaryKey, O.AutoInc)

    def name = column[String]("model")

    def * = (id,name)
  }

  private lazy val models = TableQuery[ModelTable]


  /*
  /**
    * The starting point for all queries on the people table.
    */
  private val people = TableQuery[PeopleTable]

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
  }*/
}
