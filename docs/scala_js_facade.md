
Display some shoelace icons; valid icon names include;

Now lets try ms

```scala mdoc:js:shared
import scala.scalajs.js
import scala.scalajs.js.annotation._

@js.native
@JSImport("ms@2.1.3/+esm", JSImport.Default)
object ms extends js.Object {
  def apply(s: Double): String = js.native
  def apply(s: String): Double = js.native
}

```

```scala mdoc:js
val date = new scala.scalajs.js.Date()
val time = ms( "2 days")
val time2 = ms( 1000)
node.innerHTML = s"Hello from npm package 'ms': $time , $time2 "
```