Underneath the code fence, there is a textbox. Shoelace will autoload valid icons. Example are;

- rocket-takeoff
- heart

```scala mdoc:js

import com.raquo.laminar.shoelace.sl
import com.raquo.laminar.shoelace.sl
import com.raquo.laminar.api.L.{*, given}
import org.scalajs.dom

node.id = "appContainer"
val iconVar = Var("rocket-takeoff")

render(dom.document.querySelector("#appContainer"),
  div(
      cls := "sl-theme-light",
      sl.Input.of(
      _.label("Enter icon name"),
      _ => width.px(200),
      _.controlled(
        _.value <-- iconVar,
        _.onInput.mapToValue --> iconVar,
      )
    ),
      sl.Icon.of(
        _.name <-- iconVar

     )


    )
)

```