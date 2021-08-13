import 'package:objetivo_dia_app/models/objetivo.dart';
import 'package:objetivo_dia_app/models/tarefa.dart';
import 'package:objetivo_dia_app/models/usuario.dart';

final List<Usuario> USUARIOS = [
  Usuario(
      id: 1,
      nome: 'João Andrade',
      email: 'john@gmail.com',
      dataCriacaoConta: DateTime.now().toString())
];

final List<Objetivo> OBJETIVOS = [
  Objetivo(id: 1, titulo: 'Hoje a tarde', data: DateTime.now(), tarefas: [
    Tarefa(id: 1, titulo: 'Jogar lixo fora', isFeita: true),
    Tarefa(id: 2, titulo: 'Estudar', isFeita: false)
  ]),
  Objetivo(
      id: 2,
      titulo: 'Hoje de manha',
      data: DateTime.now(),
      tarefas: [Tarefa(id: 3, titulo: 'Jogar lixo fora', isFeita: false)]),
  Objetivo(id: 3, titulo: 'Hoje a noit', data: DateTime.now(), tarefas: []),
  Objetivo(id: 4, titulo: 'Amnha de manhã', data: DateTime.now(), tarefas: [])
];
