import 'package:flutter/material.dart';
import 'package:objetivo_dia_app/utils/app_route.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Seja bem vindo'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Seus dados'),
            onTap: () =>
                Navigator.of(context).pushReplacementNamed(AppRoute.SEUS_DADOS),
          ),
          Divider(),
          ListTile(
              leading: Icon(Icons.star),
              title: Text('Seus objetivos'),
              onTap: () =>
                  Navigator.of(context).pushReplacementNamed(AppRoute.HOME)),
          Divider(),
        ],
      ),
    );
  }
}
