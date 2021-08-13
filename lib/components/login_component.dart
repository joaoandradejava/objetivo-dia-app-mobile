import 'package:flutter/material.dart';

class LoginComponent extends StatelessWidget {
  final form = GlobalKey<FormState>();

  void logar() {
    form.currentState!.save();
    bool isFormularioValido = form.currentState!.validate();

    if(!isFormularioValido){
      return;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        children: [
          Text('Faça seu Login'),
          Form(
              key: form,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Informe seu email'),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Informe sua senha'),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextButton(onPressed: () {}, child: Text('Logar'))
                ],
              ))
        ],
      ),
    );
  }
}
