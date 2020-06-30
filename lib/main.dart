import 'package:flutter/material.dart';

void main() {
  runApp(new ListaCustasApp());
}

class ListaCustasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new ListaScreen());
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
                onPressed: () {},
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
