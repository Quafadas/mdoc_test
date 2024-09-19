import java.io.File

lazy val jsdocs = project
  .settings(
    libraryDependencies += "org.scala-js" %%% "scalajs-dom" % "2.8.0",
    libraryDependencies += "io.github.quafadas" %%% "vecxt" % "0.0.19",
    libraryDependencies ++= Seq(
      "com.raquo" %%% "laminar-shoelace" % "0.1.0",
      "com.raquo" %%% "laminar" % "17.0.0"
    ),
    scalaVersion := "3.3.3",
    scalaJSLinkerConfig ~= {
      _.withClosureCompiler(false)
        .withModuleKind(ModuleKind.ESModule)
    }
  )
  .enablePlugins(ScalaJSPlugin)

lazy val docs = project // new documentation project
  .in(file("myproject-docs")) // important: it must not be docs/
  .enablePlugins(MdocPlugin)
  .settings(
    mdocJS := Some(jsdocs),
    libraryDependencies += "io.github.quafadas" %%% "vecxt" % "0.0.19",
    mdocVariables := Map(
      "VERSION" -> "2"
    ),
    scalaVersion := "3.3.3"
  )
