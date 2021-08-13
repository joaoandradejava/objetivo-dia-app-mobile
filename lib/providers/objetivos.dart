import 'package:flutter/cupertino.dart';
import 'package:objetivo_dia_app/data/DUMMY_DATA.dart';
import 'package:objetivo_dia_app/models/objetivo.dart';

class Objetivos with ChangeNotifier{
  List<Objetivo> _objetivos = OBJETIVOS;

  List<Objetivo> get objetivos {
    return [..._objetivos];
  } 

  int get quantidadeDeObjetivos{
    return _objetivos.length;
  }
}