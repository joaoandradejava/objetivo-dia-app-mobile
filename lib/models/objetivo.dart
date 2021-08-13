import 'package:objetivo_dia_app/models/Usuario.dart';
import 'package:objetivo_dia_app/models/tarefa.dart';

class Objetivo {
  final int id;
  final String titulo;
  final DateTime data;
  final List<Tarefa> tarefas;

  Objetivo(
      {required this.id,
      required this.titulo,
      required this.data,
      required this.tarefas});
}
