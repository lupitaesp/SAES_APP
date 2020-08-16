import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';



class WebC3 extends StatefulWidget{
  @override
  _Principal createState()=> new _Principal();
}

class _Principal extends State<WebC3>{
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
        initialUrl: "https://www.elheraldodejuarez.com.mx/doble-via/salud/estudio-revela-que-algunos-sobrevivientes-de-covid-19-sufren-desordenes-psiquiatricos-5576530.html",
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}
