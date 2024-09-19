In an sbt console,

`mdoc --import-map-path importmap.json --property-file-name my.properties`

If that worked, run this

`mdoc --watch --import-map-path importmap.json --property-file-name my.properties`

And visit `http://localhost:4000/`.

# Purpose

This repository is an example of using mdoc to document scala JS projects. It is a rider to this PR;

https://github.com/scalameta/mdoc/pull/883

That PR "works" and is reasonably well tested, but configuring mdoc to use it effectively is almost pathologically tricky. Hence, this repo.

Areas of configuration:

- sbt project settings
- properties file (which is generated by the sbt mdoc plugin). It _must_ be located in a _resource_ directory of the mdoc (NOT the mdoc-js!!! project).
- command line flags

Hint: I _strongly_ recommend checking that proprties file into your repository. It forms a poor mans package.json and it painful to recreate if lost.