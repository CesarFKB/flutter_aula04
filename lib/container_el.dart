import 'package:flutter/material.dart';

class ContainerEl extends StatefulWidget {
  const ContainerEl({super.key});

  @override
  State<ContainerEl> createState() => _ContainerElState();
}

class _ContainerElState extends State<ContainerEl> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(child: Icon(Icons.add_circle, size: 40,)),
        Center(child: Text("Adicionar Imagem", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
      ],
    );
  }
}