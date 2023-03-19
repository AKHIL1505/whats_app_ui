import 'package:flutter/material.dart';

import 'chat_details.dart';

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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff128C7E),
          title: const Text("WhatsApp"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
          bottom: const TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            tabs: [
              Tab(
                child: Icon(Icons.people),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),

        ///APP BAR ENDING

        body: TabBarView(children: [
          Image.asset(
            "assets/Image/404.jpg",
            fit: BoxFit.cover,
          ),
          ListView(
            children: List.generate(
                9,
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
          backgroundColor: const Color(0xff128C7E),
          child: const Icon(Icons.chat),
        ),
      ),
    );
  }
}
