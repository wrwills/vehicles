# Vehicle lookup

Adapted from https://github.com/playframework/playframework/tree/master/templates/play-scala-intro

I initially tried to make this work using the play-slick-codegen-flyway-seed template, but couldn't get that to work.  The table definitions in VehicleRepository were generated using slick codegen.

To run:

sbt
test
run 

run will ask to apply database evolutions

Not all the fields for a vehicle have been added to the database.

The javascript on the site hasn't been integrated with the play form.
