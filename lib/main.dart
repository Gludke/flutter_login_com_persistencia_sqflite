import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: Column(
          //Espaço máximo entre os widgets dentro da Column:
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //LOGO DA EMPRESA:
          children: <Widget>[
            Image.asset('images/bytebank_logo.png'),
            //container serve quando queremos colocar os widgets dentro de um "caixa" e também para agrupá-los. Container sempre se ajusta conforme os widgets dentro dele.
            Container(
              height: 100,
              width: 150,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.people),
                  const Text('Contacts'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
