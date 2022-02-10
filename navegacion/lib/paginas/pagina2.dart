import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/services.dart';

class Pagina2 extends StatelessWidget {
  //hago el contructor de la clase para que reciba un String
  Pagina2(this.url);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.url),
      ),
      body: SafeArea(
        child: Center(
          //coloco un webviewScaffold y le paso el String que he recogido en la pantalla anterior
          child: WebviewScaffold(
            url: 'https://' + this.url,
          ),
        ),
      ),
    );
  }
}
