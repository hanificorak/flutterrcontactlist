import 'package:first_project/add_contact_page.dart';
import 'package:first_project/model/contact.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<Contact> contacts;

  void initState() {
    contacts = Contact.contacts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Book"),
        actions: <Widget>[],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddContactPage()),
          );
        },
        child: Icon(Icons.add),
      ),
      body: Container(
          child: Container(
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index) {
            Contact contact = contacts[index];

            return Container(
              padding: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://image.flaticon.com/icons/png/512/149/149071.png",
                    ),
                    child: Text(contact.name[0] + contact.name[1],
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(contact.name),
                        Text(contact.phoneNumber),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      )),
    );
  }
}
