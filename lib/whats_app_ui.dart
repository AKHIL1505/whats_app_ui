import 'package:flutter/material.dart';

import 'Icons_and_details.dart';

void main() {
  runApp(MaterialApp(
    home: WhatsApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class WhatsApp extends StatefulWidget {
  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff128C7E),
          title: const Text("WhatsApp"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
          bottom: TabBar(
            onTap: (tabIndex) {
              setState(() {
                currentIndex = tabIndex;
              });
            },
            indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.white)),
            labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            tabs: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.people),
              ),
              Text("Chats"),
              Text("Status"),
              Text("Calls"),
            ],
          ),
        ),

        body: TabBarView(children: [
          Image.asset(
            "assets/Image/404.jpg",
            fit: BoxFit.cover,
          ),
          ListView(
            children: List.generate(
                name.length,
                (index) => ListTile(
                      title: Text(
                        name[index],
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Row(
                        children: [
                          myIcons[index],
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              message[index],
                              overflow: TextOverflow.ellipsis,
                            ),
                          )),
                        ],
                      ),
                      leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(image[index])),
                      trailing: Text(timing[index]),
                    )),
          ),
          const Icon(Icons.car_crash),
          const Icon(Icons.car_crash),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xff128C7E),
          child: floatIcon[currentIndex],
        ),
      ),
    );
  }
}
