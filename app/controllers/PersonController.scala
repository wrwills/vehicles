package controllers

import play.api._
import play.api.mvc._
import play.api.i18n._
import play.api.data.Form
import play.api.data.Forms._
import play.api.data.validation.Constraints._
import play.api.libs.json.Json
import models._
import dal._

import scala.concurrent.{ ExecutionContext, Future }

import javax.inject._

class PersonController @Inject() (repo: PersonRepository, val messagesApi: MessagesApi)
                                 (implicit ec: ExecutionContext) extends Controller with I18nSupport{

  /**
   * The mapping for the person form.
   */
  val lookupVehicleForm: Form[LookupVehicleForm] = Form {
    mapping(
      "license" -> nonEmptyText(7,10),
      "model" -> nonEmptyText(2,15)
    )(LookupVehicleForm.apply)(LookupVehicleForm.unapply)
  }

  /**
   * The index action.
   */
  def index = Action.async {
    repo.getModels.map { models =>
      models.map( m => s"'${m.modelName}'").mkString(",")
      Ok(views.html.index(lookupVehicleForm, models))
    }
  }

  def lookupVehicle = Action.async { implicit request =>
    lookupVehicleForm.bindFromRequest.fold(
      errorForm => {
        Future.successful(Ok(views.html.index(errorForm)))
      },
      person => {
        repo.getVehicle(person.license).map { maybeVehicle => {
            maybeVehicle.filter( _.model.modelName == person.model)
              .fold(Ok(views.html.not_found()))(x => Ok(views.html.found(x)))
        }}
      }
    )
  }

}

case class LookupVehicleForm(license: String, model: String)
