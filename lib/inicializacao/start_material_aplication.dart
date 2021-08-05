import 'package:appacai/autenticacao/login.dart';
import 'package:flutter/material.dart';

class StartMaterialAplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Login(),
    );
  }
}
