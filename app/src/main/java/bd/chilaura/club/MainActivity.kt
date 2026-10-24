package bd.chilaura.club
import android.app.Activity
import android.os.Bundle
import android.webkit.WebView
import android.webkit.WebViewClient
class MainActivity: Activity() {
 override fun onCreate(savedInstanceState: Bundle?) {
  super.onCreate(savedInstanceState)
  val view = WebView(this)
  view.webViewClient = WebViewClient()
  view.settings.javaScriptEnabled = true
  view.settings.domStorageEnabled = true
  setContentView(view)
  view.loadUrl("file:///android_asset/index.html")
 }
}
