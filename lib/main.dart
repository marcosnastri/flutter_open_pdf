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

//var linkpdf;

void abrepdfold() async {
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
        appBar: new AppBar(title: new Text("TABELA DE CUSTAS 2020")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Row(children: [
              IconButton(
                icon: new Icon(Icons.picture_as_pdf, color: Colors.lightBlue),
                iconSize: 44.0,
                onPressed: () {
                  definepdf(1);
                },
              ),
              new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    //Text("Tabela do Registro Civil"),
                    Text(" ISS integrante da base de cálculo do município 1%")
                  ])
            ]),
            new Row(children: [
              IconButton(
                icon: new Icon(Icons.picture_as_pdf, color: Colors.lightBlue),
                iconSize: 44.0,
                onPressed: () {
                  definepdf(2);
                },
              ),
              new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    //Text("Tabela do Registro Civil"),
                    Text(" ISS integrante da base de cálculo do município 1,5%")
                  ])
            ])
          ],
        ));
  }
}

void definepdf(int idpdf) {
  switch (idpdf) {
    case 1:
      {
        // statements;
        abrepdf(
            "https://infographya.com/files/Tabela_de_Custas_2020_-_ISS_integrante_-_1_.pdf");
      }
      break;

    case 2:
      {
        //statements;
        abrepdf(
            "https://infographya.com/files/Tabela_de_Custas_2020_-_ISS_integrante_-_1,5_.pdf");
      }
      break;

    default:
      {
        //statements;
      }
      break;
  }
}

void abrepdf(var linkpdf) async {
  //const url =
  //    "https://infographya.com/files/Tabela_de_Custas_2020_-_ISS_integrante_-_1_.pdf";
  if (await canLaunch(linkpdf)) {
    await launch(linkpdf);
  } else {
    throw 'Could not launch $linkpdf';
  }
}
