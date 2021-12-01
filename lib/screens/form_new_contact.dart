import 'dart:html';

import 'package:flutter/material.dart';
import 'package:login_com_bd/models/contact.dart';

class FormNewContact extends StatefulWidget {
  const FormNewContact({Key? key}) : super(key: key);

  @override
  _FormNewContactState createState() => _FormNewContactState();
}

class _FormNewContactState extends State<FormNewContact> {
  final TextEditingController _controllerFieldNumberAccount =
      TextEditingController();
  final TextEditingController _controllerFieldName = TextEditingController();

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
                controller: _controllerFieldName,
                style: const TextStyle(
                  fontSize: 24.0,
                ),
                decoration: const InputDecoration(
                  labelText: 'Full name',
                ),
                keyboardType: TextInputType.name,
              ),
              //CAMPO INPUT NUMERO CONTA:
              TextField(
                controller: _controllerFieldNumberAccount,
                style: const TextStyle(
                  fontSize: 24.0,
                ),
                decoration: const InputDecoration(
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
                    child: const Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: () => _createContact(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _createContact(BuildContext context) {
    final String? name = _controllerFieldName.text;
    final double? accNumber =
        double.tryParse(_controllerFieldNumberAccount.text);
    if (name == null || accNumber == null) return;
    final newContact = Contact(name, accNumber);

    Navigator.pop(context, newContact);
  }
}
