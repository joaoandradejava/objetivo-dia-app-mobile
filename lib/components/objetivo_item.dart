import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:objetivo_dia_app/models/objetivo.dart';
import 'package:objetivo_dia_app/utils/app_route.dart';

class ObjetivoItem extends StatelessWidget {
  final Objetivo objetivo;

  ObjetivoItem(this.objetivo);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context)
              .pushNamed(AppRoute.SUAS_TAREFAS, arguments: objetivo);
        },
        title: Text(objetivo.titulo),
        subtitle: Text(
            DateFormat('dd/MM/yyyy HH:mm').format(objetivo.data).toString()),
        trailing: Container(
          width: 100,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit, color: Theme.of(context).accentColor)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: Theme.of(context).errorColor,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
