import 'package:flutter/material.dart';
import 'Icons_and_details.dart';
//import 'select_contacts_menu.dart';

void main() {
  runApp(MaterialApp(
    home: NewContacts(),
    debugShowCheckedModeBanner: false,
  ));
}

class NewContacts extends StatefulWidget {
  @override
  State<NewContacts> createState() => _NewContactsState();
}

class _NewContactsState extends State<NewContacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff128C7E),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0,right: 17),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Select contact",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Text(
                      "13 contacts",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ])
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
                children: List.generate(
              newOption.length,
              (index) => ListTile(
                title: Text(newOption[index]),
                //trailing: Icon(Icons.qr_code_outlined),
                leading: CircleAvatar(
                  backgroundColor: Color(0xff128C7E),
                  radius: 25,
                  child: newOptionIcons[index],
                ),
              ),
            )),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text("Contacts on WhatsApp"),
            ),
            Expanded(
                child: Column(
              children: List.generate(
                  name.length,
                  (index) => ListTile(
                        title: Text(name[index]),
                        subtitle: Text(bio[index]),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage(image[index])),
                      )),
            ))
          ],
        ),
      ),
    );
  }
}
