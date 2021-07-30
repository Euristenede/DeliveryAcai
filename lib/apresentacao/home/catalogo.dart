import 'package:flutter/material.dart';
import 'package:appacai/informacoes/funcionamento.dart';
import 'package:appacai/informacoes/locais_entrega.dart';
import 'package:appacai/informacoes/formas_pagamento.dart';
import 'package:appacai/informacoes/taxa_entrega.dart';

class Catalogo extends StatefulWidget {
  @override
  _CatalogoState createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    backgroundColor: Colors.purple,
  );

  final TextStyle estilo = new TextStyle(
      color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Point do Açaí",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(Icons.more_vert),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 20, bottom: 50),
                      child: Column(
                        children: [
                          Text(
                            "Informações",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text(
                                          "  Funcionamento",
                                          style: estilo,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.arrow_forward_ios),
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Funcionamento())),
                                    ),
                                  ],
                                )
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text(
                                          "  Locais de entrega",
                                          style: estilo,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.arrow_forward_ios),
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LocalEntrega())),
                                    ),
                                  ],
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text(
                                          "  Formas de pagamento",
                                          style: estilo,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.arrow_forward_ios),
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FormasPagamento())),
                                    ),
                                  ],
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text(
                                          "  Taxa de entrega",
                                          style: estilo,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.arrow_forward_ios),
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TaxaEntrega())),
                                    ),
                                  ],
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text(
                                          "  Status dos Pedidos",
                                          style: estilo,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(
                                        icon:
                                            const Icon(Icons.arrow_forward_ios),
                                        onPressed: null),
                                  ],
                                ),
                              ]),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(4),
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Image.asset('assets/images/acai.png',
                              height: 130,
                              width: double.infinity,
                              fit: BoxFit.fitWidth),
                          Center(
                            child: Container(
                              margin: const EdgeInsets.only(top: 75),
                              child: Image.asset(
                                "assets/images/logo.png",
                                height: 110,
                                width: 110,
                              ),
                            ),
                          )
                        ],
                      )),
                  Container(
                    height: 44.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        TextButton(
                          style: flatButtonStyle,
                          onPressed: null,
                          child: Text(
                            "Açaí no copo",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Divider(
                          indent: 10,
                        ),
                        TextButton(
                          style: flatButtonStyle,
                          onPressed: null,
                          child: Text(
                            "Açai na tigela",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Divider(
                          indent: 10,
                        ),
                        TextButton(
                          style: flatButtonStyle,
                          onPressed: null,
                          child: Text(
                            "Açaí com cupuaçu",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Divider(
                          indent: 10,
                        ),
                        TextButton(
                          style: flatButtonStyle,
                          onPressed: null,
                          child: Text(
                            "Açaí com sorvete",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          GestureDetector(
                            // When the child is tapped, show a snackbar.
                            onTap: () {
                              const snackBar = SnackBar(content: Text('Tap'));

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            // The custom button
                            child: Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: Theme.of(context).buttonColor,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const Text('My Button'),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
          ],
        ));
  }
}