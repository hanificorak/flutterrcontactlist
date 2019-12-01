class Contact {
  String name;
  String phoneNumber;

  static List<Contact> contacts = [
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


  Contact({this.name, this.phoneNumber});
}
