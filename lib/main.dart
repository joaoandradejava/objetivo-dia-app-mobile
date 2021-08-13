import 'package:flutter/material.dart';
import 'package:objetivo_dia_app/pages/home_page.dart';
import 'package:objetivo_dia_app/pages/objetivos_page.dart';
import 'package:objetivo_dia_app/pages/seus_dados_page.dart';
import 'package:objetivo_dia_app/pages/tarefas_page.dart';
import 'package:objetivo_dia_app/providers/objetivos.dart';
import 'package:objetivo_dia_app/providers/usuarios.dart';
import 'package:objetivo_dia_app/utils/app_route.dart';
import 'package:provider/provider.dart';

main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Usuarios(),
        ),
        ChangeNotifierProvider(
          create: (_) => Objetivos(),
        )
      ],
      child: MaterialApp(
        title: 'Objetivo do Dia App',
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(primarySwatch: Colors.purple, accentColor: Colors.blue),
        routes: {
          AppRoute.HOME: (_) => HomePage(),
          AppRoute.SEUS_DADOS: (_) => SeusDadosPage(),
          AppRoute.SUAS_TAREFAS: (_) => TarefasPage()
        },
      ),
    );
  }
}
