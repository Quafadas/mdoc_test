lazy val jsdocs = project
  .settings(
    libraryDependencies += "org.scala-js" %%% "scalajs-dom" % "2.0.0"
  )
  .enablePlugins(ScalaJSPlugin)

lazy val docs = project // new documentation project
  .in(file("myproject-docs")) // important: it must not be docs/
  .enablePlugins(MdocPlugin)
  .settings(
    mdocJS := Some(jsdocs),
    mdocVariables := Map(
      "VERSION" -> "2"
    )
  )
