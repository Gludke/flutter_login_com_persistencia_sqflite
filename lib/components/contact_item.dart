import 'package:flutter/material.dart';
import 'package:login_com_bd/models/contact.dart';
import 'package:login_com_bd/screens/form_new_contact.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;

  const ContactItem({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contact.name),
        subtitle: Text(contact.accountNumber.toString()),
      ),
    );
  }
}
