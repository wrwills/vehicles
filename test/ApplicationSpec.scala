import org.specs2.mutable._
import org.specs2.runner._
import org.junit.runner._
import play.api.db.evolutions.Evolutions
import play.db.Database

import play.api.test._
import play.api.test.Helpers._

@RunWith(classOf[JUnitRunner])
class ApplicationSpec extends Specification {

  val app = FakeApplication(additionalConfiguration = inMemoryDatabase())

  "Application" should {

    "send 404 on a bad request" in running(app) {
      route(FakeRequest(GET, "/boum")) must beSome.which (status(_) == NOT_FOUND)
    }

    "render the index page" in new WithApplication{
      val home = route(FakeRequest(GET, "/")).get

      status(home) must equalTo(OK)
      contentType(home) must beSome.which(_ == "text/html")
      contentAsString(home) must contain("local: [  , 'TEST'  , 'ABARTH'  , 'AC'  , 'AC (ELECTRIC)' ")
    }

    "find a vehicle" in new WithApplication{
      val request = FakeRequest(POST, "/").withFormUrlEncodedBody(
        "license" -> "abigcar",
        "model" -> "TEST")
      val rslt = route(request).get

      status(rslt) must equalTo(OK)
      contentType(rslt) must beSome.which(_ == "text/html")
      contentAsString(rslt) must contain("ABIG CAR")
      contentAsString(rslt) must contain("Expires: 01 March 2016")

    }

    "fail to find a vehicle if the license is not there" in new WithApplication{
      val request = FakeRequest(POST, "/").withFormUrlEncodedBody(
        "license" -> "nothere",
        "model" -> "TEST")
      val rslt = route(request).get

      status(rslt) must equalTo(OK)
      contentType(rslt) must beSome.which(_ == "text/html")
      contentAsString(rslt) must contain("Vehicle details could not be found as it has not been possible to locate the vehicle details")
    }

    "fail to find a vehicle if the model is wrong" in new WithApplication{
      val request = FakeRequest(POST, "/").withFormUrlEncodedBody(
        "license" -> "abigcar",
        "model" -> "FAKE")
      val rslt = route(request).get

      status(rslt) must equalTo(OK)
      contentType(rslt) must beSome.which(_ == "text/html")
      contentAsString(rslt) must contain("Vehicle details could not be found as it has not been possible to locate the vehicle details")

    }


  }
}
