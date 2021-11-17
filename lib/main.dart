import 'package:flutter/material.dart';
import 'package:login_com_bd/screens/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Define tudo sobre o tema geral do App.
      theme: ThemeData(
        primaryColor: Colors.green.shade900,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.green.shade900,
          secondary: Colors.blueAccent.shade700,
        ),
        //Cor para botões:
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.blueAccent.shade700),
          ),
        ),
      ),
      home: const FormNewContact(),
    );
  }
}

//######################################################
class FormNewContact extends StatefulWidget {
  const FormNewContact({Key? key}) : super(key: key);

  @override
  _FormNewContactState createState() => _FormNewContactState();
}

class _FormNewContactState extends State<FormNewContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Contact')),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              //CAMPO INPUT NOME:
              TextField(
                style: const TextStyle(
                  fontSize: 24.0,
                ),
                decoration: InputDecoration(
                  labelText: 'Full name',
                ),
                keyboardType: TextInputType.name,
              ),
              //CAMPO INPUT NUMERO CONTA:
              TextField(
                style: const TextStyle(
                  fontSize: 24.0,
                ),
                decoration: InputDecoration(
                  labelText: 'Account number',
                ),
                keyboardType: TextInputType.number,
              ),
              //BOTÃO SUBMIT:
              SizedBox(
                height: 56.0,
                //Máximo de largura para o ElevatedButton:
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
