It's so doc

```scala mdoc:js
import org.scalajs.dom.window.setInterval
import scala.scalajs.js.Date

setInterval(() => {
  node.innerHTML = new Date().toString()
}, 1000)
```

Wow that works.

```scala mdoc:js

import com.raquo.laminar.shoelace.sl.Icon
import com.raquo.laminar.api.L.{*, given}
import org.scalajs.dom


val icon = Icon(_.name := "rocket-takeoff")
node.id = "appContainer"

render(dom.document.querySelector("#appContainer"), icon)

```

Crazy

```scala mdoc:js

node.innerHTML = "hello"

```