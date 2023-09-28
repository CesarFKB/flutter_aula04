import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text("Imagens + StatefulWidget"),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Center(
                child: DottedBorder(
                  dashPattern: const [8, 8],
                  color: Colors.black,
                  child: Container(
                    constraints: BoxConstraints.tight(const Size.fromRadius(150)),
                    alignment: Alignment.center,
                    color: const Color.fromARGB(100, 172, 172, 172),
                    child: const Icon(Icons.add_circle),
                  ),
                )
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {  },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
                child: const Text("Resetar Imagem"),
              ),
            )
          ],
        ),
      ),
    );
  }
}