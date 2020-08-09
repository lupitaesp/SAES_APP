import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';



class Web extends StatefulWidget{
  @override
  _Principal createState()=> new _Principal();
}

class _Principal extends State<Web>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text('SAES', style: TextStyle(color: Colors.green)),
        centerTitle: false,
       leading: Image.asset('assets/saes2.png'),
            
        
      ),
      body: WebView(
        initialUrl: "https://utecsaes.000webhostapp.com/",
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}
