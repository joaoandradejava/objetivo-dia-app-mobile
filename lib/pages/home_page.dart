import 'package:flutter/material.dart';
import 'package:objetivo_dia_app/pages/login_page.dart';
import 'package:objetivo_dia_app/pages/objetivos_page.dart';
import 'package:objetivo_dia_app/providers/usuarios.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Usuarios usuarios = Provider.of(context);

    return usuarios.isLogado ? ObjetivosPage() : LoginPage();
  }
}
