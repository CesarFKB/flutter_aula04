import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aula04/container_el.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool imagem = false;
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
                child: imagem == false
                    ? DottedBorder(
                        dashPattern: const [8, 8],
                        color: Colors.black,
                        child: GestureDetector(
                            child: Container(
                                constraints: BoxConstraints.tight(
                                    const Size.fromRadius(150)),
                                alignment: Alignment.center,
                                color: const Color.fromARGB(100, 172, 172, 172),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 70,
                                  child: const ContainerEl(),
                                )),
                            onTap: () {
                              setState(() {
                                imagem = true;
                              });
                            }))
                    : Container(
                        constraints:
                            BoxConstraints.tight(const Size.fromRadius(150)),
                        alignment: Alignment.center,
                        child: const Image(
                          image: NetworkImage(
                              "https://yt3.googleusercontent.com/ytc/APkrFKab2owT4q0x6_6G1m5s9YqkHrRrpxfSXLPQbkxRZw=s176-c-k-c0x00ffffff-no-rj"),
                          fit: BoxFit.contain,
                        )),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    imagem = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
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
