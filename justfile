mdocLocalV := "2.6.1"

mdoc:
  sbt 'mdoc --import-map-path importmap.json --property-file-name my.properties'

mdocW:
  sbt 'mdoc --import-map-path importmap.json --property-file-name my.properties'

mdocCLI:
  cs launch org.scalameta:mdoc-js_3:2.6.1 --extra-jars $(pwd) -- --watch --import-map-path $(pwd)/importmap.json
