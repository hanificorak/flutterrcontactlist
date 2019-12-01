import 'package:flutter/material.dart';

void main() => runApp(HomeApp());

/*
@author Hanifi Çorak
hanificorak@outlook.com
*/

class Contact {
  String name;
  String phoneNumber;

  Contact({this.name, this.phoneNumber});
}

class HomeApp extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: 'Hanifi', phoneNumber: "0555 555 5555"),
    Contact(name: 'Ali', phoneNumber: "0555 555 5555"),
    Contact(name: 'Mehmet', phoneNumber: "0555 555 5555"),
    Contact(name: 'Faruk', phoneNumber: "0555 555 5555"),
    Contact(name: 'Tuncay', phoneNumber: "0555 555 5555"),
    Contact(name: 'Kerim', phoneNumber: "0555 555 5555"),
    Contact(name: 'Süleyman', phoneNumber: "0555 555 5555"),
    Contact(name: 'Murat', phoneNumber: "0555 555 5555"),
    Contact(name: 'Aslan', phoneNumber: "0555 555 5555"),
    Contact(name: 'Sinan', phoneNumber: "0555 555 5555"),
    Contact(name: 'Fikret', phoneNumber: "0555 555 5555"),
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Phone Book"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            )
          ],
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
                          "https://image.flaticon.com/icons/png/512/149/149071.png"),
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
                    Divider(),
                  ],
                ),
              );
            },
          ),
        )),
      ),
    );
  }
}
