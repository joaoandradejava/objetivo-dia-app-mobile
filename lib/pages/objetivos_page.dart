import 'package:flutter/material.dart';
import 'package:objetivo_dia_app/components/app_drawer.dart';
import 'package:objetivo_dia_app/components/objetivo_item.dart';
import 'package:objetivo_dia_app/providers/objetivos.dart';
import 'package:provider/provider.dart';

class ObjetivosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Objetivos objetivos = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Seus Objetivos'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemBuilder: (ctx, index) =>
                  ObjetivoItem(objetivos.objetivos[index]),
              itemCount: objetivos.quantidadeDeObjetivos,
            ))
          ],
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
