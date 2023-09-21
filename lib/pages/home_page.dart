import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 79, 116, 135),
        title: const Text("Carros"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return const Center(
      child: Text("Home"),
    );
  }

}