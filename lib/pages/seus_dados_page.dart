import 'package:flutter/material.dart';
import 'package:objetivo_dia_app/components/app_drawer.dart';

class SeusDadosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seus dados'),
      ),
      body: Center(
        child: Text('Seus dados'),
      ),
      drawer: AppDrawer(),
    );
  }
}
