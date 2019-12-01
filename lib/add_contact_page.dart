import 'package:first_project/model/contact.dart';
import 'package:flutter/material.dart';

class AddContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Contact.contacts.add(Contact(name: "New User", phoneNumber: "05426711046"));

    return Scaffold(
      appBar: AppBar(
        title: Text("Yeni Kişi Ekle"),
      ),
      body: AddContactForm()
    );
  }
}


class AddContactForm extends StatefulWidget{
  @override
  _AddContactFormState createState() => _AddContactFormState();
}

class _AddContactFormState extends State<AddContactForm>{

  @override

  Widget build(BuildContext context){
      return Form(
        child: TextFormField(),
      );
  }
}
