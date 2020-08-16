import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';



class WebC2 extends StatefulWidget{
  @override
  _Principal createState()=> new _Principal();
}

class _Principal extends State<WebC2>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text('Noticias', style: TextStyle(color: Colors.green)),
        centerTitle: false,
       leading: Image.asset('assets/saes2.png'),
            
        
      ),
      body: WebView(
        initialUrl: "https://www.elmundo.es/ciencia-y-salud/salud/2020/08/05/5f29bafcfc6c83b01a8b46c3.html",
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}
