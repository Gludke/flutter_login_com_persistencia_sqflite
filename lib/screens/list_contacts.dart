import 'package:flutter/material.dart';

class ListContacts extends StatefulWidget {
  const ListContacts({Key? key}) : super(key: key);

  @override
  _ListContactsState createState() => _ListContactsState();
}

class _ListContactsState extends State<ListContacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacts')),
      body: ListView(
        children: [
          //ITENS DA LISTA:
          Card(
            child: ListTile(
              title: Text('Nome do Elemento'),
              subtitle: Text('1000'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
