import 'package:flutter/material.dart';
import 'package:login_com_bd/components/contact_item.dart';
import 'package:login_com_bd/models/contact.dart';
import 'package:login_com_bd/screens/form_new_contact.dart';

class ListContacts extends StatefulWidget {
  final List<Contact> contacts = [];

  ListContacts({Key? key}) : super(key: key);

  @override
  _ListContactsState createState() => _ListContactsState();
}

class _ListContactsState extends State<ListContacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacts')),
      body: ListView.builder(
          itemCount: widget.contacts.length,
          itemBuilder: (context, int index) {
            final Contact contact = widget.contacts[index];
            return ContactItem(contact: contact);
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => FormNewContact(),
                ),
              )
              .then((newContact) => _updateListContacts(newContact));
        },
      ),
    );
  }

  _updateListContacts(Contact? newContact) {
    if (newContact != null) {
      setState(() {
        //Atualizar a lista
        widget.contacts.add(newContact);
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(newContact.toString(),
                style: const TextStyle(fontSize: 20.0))),
      );
    }
  }
}
