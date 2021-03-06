import 'package:flutter/material.dart';
import 'package:appacai/pedidos/adicionais_pedidos.dart';
import 'package:appacai/pedidos/confirmar_pedido.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CaldaFruta extends StatefulWidget {
  @override
  _CaldaFrutaState createState() => _CaldaFrutaState();
}

class _CaldaFrutaState extends State<CaldaFruta> {
  final TextStyle estilo = new TextStyle(
      color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    backgroundColor: Colors.purple,
  );

  int _count = 0,
      _countLeiteCondensado = 0,
      _countChocolate = 0,
      _countMorango = 0,
      _countCaramelo = 0,
      _countXaropeGuarana = 0,
      _countBanana = 0,
      _countMorangos = 0,
      _countKiwi = 0,
      _countUva = 0,
      _countManga = 0,
      _countPessego = 0;

  _verificaSelecionadoCalda() async {
    List<String> descricao = [];
    if (_countLeiteCondensado > 0) {
      descricao.add("LEITE CONDENSADO");
    }
    if (_countChocolate > 0) {
      descricao.add("CHOCOLATE");
    }
    if (_countMorango > 0) {
      descricao.add("MORANGO");
    }
    if (_countCaramelo > 0) {
      descricao.add("CARAMELO");
    }
    if (_countXaropeGuarana > 0) {
      descricao.add("XAROPE DE GRARANÁ");
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList("calda", descricao);
  }

  _verificaSelecionadoFrutas() async {
    List<String> descricao = [];
    if (_countBanana > 0) {
      descricao.add("BANANA");
    }
    if (_countMorangos > 0) {
      descricao.add("MORANGO");
    }
    if (_countKiwi > 0) {
      descricao.add("KIWI");
    }
    if (_countUva > 0) {
      descricao.add("UVA");
    }
    if (_countManga > 0) {
      descricao.add("MANGA");
    }
    if (_countPessego > 0) {
      descricao.add("PESSEGO");
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList("fruta", descricao);
  }

  _incrementar(String nome) {
    if (nome == "leiteCondensado" && _countLeiteCondensado == 0 && _count < 1) {
      setState(() {
        _countLeiteCondensado = _countLeiteCondensado + 1;
        _count = _count + 1;
      });
    } else if (nome == "chocolate" && _countChocolate == 0 && _count < 1) {
      setState(() {
        _countChocolate = _countChocolate + 1;
        _count = _count + 1;
      });
    } else if (nome == "morango" && _countMorango == 0 && _count < 1) {
      setState(() {
        _countMorango = _countMorango + 1;
        _count = _count + 1;
      });
    } else if (nome == "caramelo" && _countCaramelo == 0 && _count < 1) {
      setState(() {
        _countCaramelo = _countCaramelo + 1;
        _count = _count + 1;
      });
    } else if (nome == "xaropeGuarana" &&
        _countXaropeGuarana == 0 &&
        _count < 1) {
      setState(() {
        _countXaropeGuarana = _countXaropeGuarana + 1;
        _count = _count + 1;
      });
    } else if (nome == "banana" && _countBanana == 0 && _count < 3) {
      setState(() {
        _countBanana = _countBanana + 1;
        _count = _count + 1;
      });
    } else if (nome == "morangos" && _countMorangos == 0 && _count < 3) {
      setState(() {
        _countMorangos = _countMorangos + 1;
        _count = _count + 1;
      });
    } else if (nome == "kiwi" && _countKiwi == 0 && _count < 3) {
      setState(() {
        _countKiwi = _countKiwi + 1;
        _count = _count + 1;
      });
    } else if (nome == "uva" && _countUva == 0 && _count < 3) {
      setState(() {
        _countUva = _countUva + 1;
        _count = _count + 1;
      });
    } else if (nome == "manga" && _countManga == 0 && _count < 3) {
      setState(() {
        _countManga = _countManga + 1;
        _count = _count + 1;
      });
    } else if (nome == "pessego" && _countPessego == 0 && _count < 3) {
      setState(() {
        _countPessego = _countPessego + 1;
        _count = _count + 1;
      });
    }
  }

  _decrementar(String nome) {
    if (nome == "leiteCondensado" && _countLeiteCondensado == 1) {
      setState(() {
        _countLeiteCondensado = _countLeiteCondensado - 1;
        _count = _count - 1;
      });
    } else if (nome == "chocolate" && _countChocolate == 1) {
      setState(() {
        _countChocolate = _countChocolate - 1;
        _count = _count - 1;
      });
    } else if (nome == "morango" && _countMorango == 1) {
      setState(() {
        _countMorango = _countMorango - 1;
        _count = _count - 1;
      });
    } else if (nome == "caramelo" && _countCaramelo == 1) {
      setState(() {
        _countCaramelo = _countCaramelo - 1;
        _count = _count - 1;
      });
    } else if (nome == "xaropeGuarana" && _countXaropeGuarana == 1) {
      setState(() {
        _countXaropeGuarana = _countXaropeGuarana - 1;
        _count = _count - 1;
      });
    } else if (nome == "banana" && _countBanana == 1) {
      setState(() {
        _countBanana = _countBanana - 1;
        _count = _count - 1;
      });
    } else if (nome == "morangos" && _countMorangos == 1) {
      setState(() {
        _countMorangos = _countMorangos - 1;
        _count = _count - 1;
      });
    } else if (nome == "kiwi" && _countKiwi == 1) {
      setState(() {
        _countKiwi = _countKiwi - 1;
        _count = _count - 1;
      });
    } else if (nome == "uva" && _countUva == 1) {
      setState(() {
        _countUva = _countUva - 1;
        _count = _count - 1;
      });
    } else if (nome == "manga" && _countManga == 1) {
      setState(() {
        _countManga = _countManga - 1;
        _count = _count - 1;
      });
    } else if (nome == "pessego" && _countPessego == 1) {
      setState(() {
        _countPessego = _countPessego - 1;
        _count = _count - 1;
      });
    }
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
                  padding: EdgeInsets.only(top: 20, bottom: 50),
                  child: Column(
                    children: [
                      Text(
                        "Escolha a calda",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(),
                      Text(
                        "Máximo 1",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
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
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("leiteCondensado");
                          },
                        ),
                        Text('$_countLeiteCondensado'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("leiteCondensado");
                          },
                        ),
                        Text(
                          "  LEITE CONDENSADO",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("chocolate");
                          },
                        ),
                        Text('$_countChocolate'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("chocolate");
                          },
                        ),
                        Text(
                          "  CHOCOLATE",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("morango");
                          },
                        ),
                        Text('$_countMorango'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("morango");
                          },
                        ),
                        Text(
                          "  MORANGO",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("caramelo");
                          },
                        ),
                        Text('$_countCaramelo'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("caramelo");
                          },
                        ),
                        Text(
                          "  CARAMELO",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                              color: Colors.red),
                          onPressed: () {
                            _decrementar("xaropeGuarana");
                          },
                        ),
                        Text('$_countXaropeGuarana'),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {
                            _incrementar("xaropeGuarana");
                          },
                        ),
                        Text(
                          "  XAROPE DE GUARANÁ",
                          style: estilo,
                        ),
                      ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Center(
                          child: Container(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(children: <Widget>[
                          Text(
                            "Escolha as frutas",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                      )),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("banana");
                                    },
                                  ),
                                  Text('$_countBanana'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("banana");
                                    },
                                  ),
                                  Text(
                                    "  BANANA",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("morangos");
                                    },
                                  ),
                                  Text('$_countMorangos'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("morangos");
                                    },
                                  ),
                                  Text(
                                    "  MORANGO",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("kiwi");
                                    },
                                  ),
                                  Text('$_countKiwi'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("kiwi");
                                    },
                                  ),
                                  Text(
                                    "  KIWI",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("uva");
                                    },
                                  ),
                                  Text('$_countUva'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("uva");
                                    },
                                  ),
                                  Text(
                                    "  UVA",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("manga");
                                    },
                                  ),
                                  Text('$_countManga'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("manga");
                                    },
                                  ),
                                  Text(
                                    "  MANGA",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: Colors.red),
                                    onPressed: () {
                                      _decrementar("pessego");
                                    },
                                  ),
                                  Text('$_countPessego'),
                                  IconButton(
                                    icon: Icon(Icons.add_circle,
                                        color: Colors.green),
                                    onPressed: () {
                                      _incrementar("pessego");
                                    },
                                  ),
                                  Text(
                                    "  PESSEGO",
                                    style: estilo,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Row(
                                children: [
                                  Text(r" R$ 4,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ]),
                      const Divider(
                        height: 10,
                        thickness: 2,
                        color: Colors.black,
                      ),
                    ],
                  )),
            ],
          ),
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
                    MaterialPageRoute(builder: (context) => Adicionais())),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Text(
                      "Anterior",
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
                  await _verificaSelecionadoCalda();
                  await _verificaSelecionadoFrutas();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConfirmaPedido()));
                },
                child: Row(
                  children: [
                    Text(
                      "Próximo",
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
