import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(new ListaCustasApp());
}

class ListaCustasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new ListaScreen());
  }
}

void abrepdf() async {
  const url =
      "https://infographya.com/files/Tabela_de_Custas_2020_-_ISS_integrante_-_1_.pdf";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class ListaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Lista de Custas")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Row(children: [
              IconButton(
                icon: new Icon(Icons.cloud_download, color: Colors.green),
                iconSize: 44.0,
                onPressed: () {
                  abrepdf();
                },
              ),
              new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Linha 1 : Custas SP"),
                    Text("Linha 2 : Detalhes SP")
                  ])
            ])
          ],
        ));
  }
}
