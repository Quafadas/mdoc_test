mdocLocalV := "0.0.0+1377-32535440+20240710-1722-SNAPSHOT"

mdoc:
  cs launch org.scalameta:mdoc-js_2.13:2.5.4 --extra-jars $(pwd) -- --watch

mdoc3:
  cs launch org.scalameta:mdoc-js_3:2.5.4 --extra-jars $(pwd) -- --watch

mdocLocal:
  cs launch org.scalameta:mdoc-js_3:{{mdocLocalV}} --extra-jars $(pwd) -- --import-map-path /Users/simon/Code/mdoc_test/importmap.json --watch
