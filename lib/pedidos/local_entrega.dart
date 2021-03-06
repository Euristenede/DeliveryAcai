import 'package:flutter/material.dart';
import 'package:appacai/pedidos/resumo_pedido.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalEntrega extends StatefulWidget {
  @override
  _LocalEntregaState createState() => _LocalEntregaState();
}

class _LocalEntregaState extends State<LocalEntrega> {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    backgroundColor: Colors.purple,
  );

  final TextStyle estilo = new TextStyle(
      color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);

  final TextStyle inputStyle =
      new TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  final campoCidade = TextEditingController();
  final campoBairro = TextEditingController();
  final campoRua = TextEditingController();
  final campoNumero = TextEditingController();
  final campoComplemento = TextEditingController();
  final campoReferencia = TextEditingController();

  _salvarEndereco(String cidade, String bairro, String rua, String numero,
      String complemento, String referencia) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(
        "localEntrega",
        cidade +
            " - " +
            bairro +
            " - " +
            rua +
            " - " +
            numero +
            " - " +
            complemento +
            " - " +
            referencia);
  }

  _salvarEnderecoLocal(String cidade, String bairro) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("localEntregaLocal", cidade + " - " + bairro);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Point do Açaí",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    children: [
                      Text(
                        "Endereço de entrega",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ],
          ),
          Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  TextFormField(
                    controller: campoCidade,
                    style: inputStyle,
                    decoration: const InputDecoration(
                        hintText: 'Cidade',
                        hintStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  Divider(),
                  TextFormField(
                    controller: campoBairro,
                    style: inputStyle,
                    decoration: const InputDecoration(
                        hintText: 'Bairro',
                        hintStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  Divider(),
                  TextFormField(
                    controller: campoRua,
                    style: inputStyle,
                    decoration: const InputDecoration(
                      hintText: 'Rua/Av.*',
                      hintStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(),
                  TextFormField(
                    controller: campoNumero,
                    style: inputStyle,
                    decoration: const InputDecoration(
                      hintText: 'Número*',
                      hintStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(),
                  TextFormField(
                    controller: campoComplemento,
                    style: inputStyle,
                    decoration: const InputDecoration(
                      hintText: 'Complemento',
                      hintStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(),
                  TextFormField(
                    controller: campoReferencia,
                    style: inputStyle,
                    decoration: const InputDecoration(
                      hintText: 'Ponto de Referência*',
                      hintStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 2, bottom: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: flatButtonStyle,
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResumoPedido())),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Text(
                      "Voltar",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    )
                  ],
                ),
              ),
              TextButton(
                style: flatButtonStyle,
                onPressed: () async {
                  await _salvarEndereco(
                      campoCidade.text,
                      campoBairro.text,
                      campoRua.text,
                      campoNumero.text,
                      campoComplemento.text,
                      campoReferencia.text);
                  await _salvarEnderecoLocal(
                      campoCidade.text, campoBairro.text);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResumoPedido()));
                },
                child: Row(
                  children: [
                    Text(
                      "Salvar",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
