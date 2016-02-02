package models

import java.util.Date

/**
  * Created by rob on 24/01/16.
  */
case class Vehicle(license: String, model: Model, registrationDate: Date, motDueDate: Date) {
  def licenseReg = {
    val parts = license.toUpperCase.splitAt(4)
    s"${parts._1} ${parts._2}"
  }
}

object Vehicle {
  def applym(license: String, model: String, registrationDate: Date, motDueDate: Date): Vehicle =
    Vehicle(license,Model(model),registrationDate, motDueDate)
}

case class Model(modelName: String)
