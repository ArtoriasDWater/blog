import 'package:flutter/material.dart';

//El punto de entrada de la aplicación
void main() {
  runApp(const MyApp());
}

//Widget raíz de la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Funcional',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'CALCULADORA',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Container(
            color: Colors.red,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.black,
                    height: double.infinity,
                    width: double.infinity,
                    padding: EdgeInsets.all(24),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '3x2',
                        style: TextStyle(fontSize: 65, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    color: Colors.black,
                    child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 16,
                      shrinkWrap: true,
                      padding: EdgeInsets.all(16),
                      children: [
                        BotonCalculadora(
                          texto: 'AC',
                          colorFondo: Colors.grey.shade600,
                          colorTexto: Colors.deepOrange,
                        ),
                        BotonCalculadora(
                          texto: 'x',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.deepOrange,
                        ),
                        BotonCalculadora(
                          texto: '%',
                          colorFondo: Colors.grey.shade200,
                          colorTexto: Colors.deepOrange,
                        ),
                        BotonCalculadora(
                          texto: '/',
                          colorFondo: Colors.grey.shade400,
                          colorTexto: Colors.deepOrange,
                        ),
                        BotonCalculadora(
                          texto: '7',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.white,
                        ),
                        BotonCalculadora(
                          texto: '8',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.white,
                        ),
                        BotonCalculadora(
                          texto: '9',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.white,
                        ),
                        BotonCalculadora(
                          texto: 'X',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.deepOrange,
                        ),
                        BotonCalculadora(
                          texto: '4',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.white,
                        ),
                        BotonCalculadora(
                          texto: '5',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.white,
                        ),
                        BotonCalculadora(
                          texto: '6',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.white,
                        ),
                        BotonCalculadora(
                          texto: '-',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.deepOrange,
                        ),
                        BotonCalculadora(
                          texto: '1',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.white,
                        ),
                        BotonCalculadora(
                          texto: '2',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.white,
                        ),
                        BotonCalculadora(
                          texto: '3',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.white,
                        ),
                        BotonCalculadora(
                          texto: '+',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.deepOrange,
                        ),
                        BotonCalculadora(
                          texto: '->',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.deepOrange,
                        ),
                        BotonCalculadora(
                          texto: '0',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.white,
                        ),
                        BotonCalculadora(
                          texto: '.',
                          colorFondo: Colors.grey.shade800,
                          colorTexto: Colors.white,
                        ),
                        BotonCalculadora(
                          texto: '=',
                          colorFondo: Colors.indigo,
                          colorTexto: Colors.deepOrange,
                        ),
                        // Más botones pueden ser añadidos aquí
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BotonCalculadora extends StatelessWidget {
  final String texto;
  final Color colorFondo;
  final Color colorTexto;

  const BotonCalculadora({
    super.key,
    required this.texto,
    required this.colorFondo,
    required this.colorTexto,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Acción al presionar el botón
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: colorFondo,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(texto, style: TextStyle(fontSize: 24, color: colorTexto)),
    );
    // return Container(
    //   decoration: BoxDecoration(
    //     color: colorFondo,
    //     borderRadius: BorderRadius.circular(20),
    //   ),
    //   child: Center(
    //     child: Text(texto, style: TextStyle(fontSize: 24, color: colorTexto)),
    //   ),
    // );
  }
}
