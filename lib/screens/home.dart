import 'package:flutter/material.dart';
import 'package:lista_tarefas_com_pontos/models/task.dart';

const _titleBar = "Tarefas";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_titleBar),
      ),
      body: AnimatedOpacity(
        opacity: (opacidade == true) ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: ListView(
          children: const [
            Task(
              nome: "Andar de Bicicleta",
              foto: "assets/images/bike.webp",
              dificuldade: 2,
            ),
            Task(
              nome: "Aprender Flutter",
              foto: "assets/images/dash.png",
              dificuldade: 5,
            ),
            Task(
              nome: "Meditar",
              foto: "assets/images/meditar.jpeg",
              dificuldade: 2,
            ),
            Task(
              nome: "Ler um livro",
              foto: "assets/images/livro.jpg",
              dificuldade: 2,
            ),
            Task(
              nome: "Jogar",
              foto: "assets/images/jogar.jpg",
              dificuldade: 2,
            ),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
