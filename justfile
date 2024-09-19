mdocLocalV := "2.6.1"

mdocSuccess:
  sbt 'mdoc --watch --import-map-path importmap.json'

mdoc:
  cs launch org.scalameta:mdoc-js_2.13:2.6.1 --extra-jars $(pwd) -- --watch

mdoc3:
  cs launch org.scalameta:mdoc-js_3:2.6.1 --extra-jars $(pwd) -- --watch --import-map-path $(pwd)/importmap.json

mdocLocal:
  cs launch org.scalameta:mdoc-js_3:{{mdocLocalV}} --extra-jars $(pwd) -- --import-map-path $(pwd)/importmap.json --watch
