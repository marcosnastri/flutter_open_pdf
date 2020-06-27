import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher_web/url_launcher_web.dart';

void main() {
  runApp(new MyApp());  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        //appBar: new AppBar(
        // title: new Text('UrlLauchner'),
        //),
        body: new Center(
          child: new InkWell(
              child: new Text('Tabela de Custas ISS integrante'),
              onTap: () => launch('https://infographya.com/files/Tabela_de_Custas_2020_-_ISS_integrante_-_1_.pdf'),
              //onTap: () => launch('http://www.arpensp.org.br/?pG=X19wYWdpbmFz&idPagina=10260'),
              
            ),
          
        )
      ),
    );
  }
}