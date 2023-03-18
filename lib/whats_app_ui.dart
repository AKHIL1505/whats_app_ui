import 'package:flutter/material.dart';

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
          backgroundColor: const Color(0xff128C7E ),
          title: const Text("WhatsApp"),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.camera_alt_outlined),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            )
          ],
          bottom: const TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            tabs: [
              Tab(
                child: Icon(Icons.people),
                iconMargin: EdgeInsets.all(100),
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
        body: ListView(children: [
          ListTile(
            title: const Text(
              "Thor",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.done_all,
                  color: Colors.blueAccent,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "Purushuvinu Ippo Yudham Onnum Ille.",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            leading: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/Icons/Thor.jpg"),
            ),
            trailing: const Text("10:23 am"),
          ),
          ListTile(
            title: const Text(
              "Hulk",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.done,
                  color: Colors.grey,
                ),
                Text("Aareda Naari Nee"),
              ],
            ),
            leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "assets/Icons/Hulk.jpg",
                )),
            trailing: const Text("10:50 am"),
          ),
          ListTile(
            title: const Text(
              "Iron Man",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.done_all,
                  color: Colors.grey,
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "Varu Namukkonnu Kandam Vazhi Odiyittu Varam",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )),
              ],
            ),
            leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "assets/Icons/IronMan.jpg",
                )),
            trailing: const Text("11:05 am"),
          ),
          ListTile(
            title: const Text(
              "Captain America",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.missed_video_call,
                  color: Colors.red,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text("Missed video call"),
                ),
              ],
            ),
            leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "assets/Icons/Captain America.jpg",
                )),
            trailing: const Text("1:56 pm"),
          ),
          ListTile(
            title: const Text(
              "Black Panther",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Row(
              children: const [
                Icon(Icons.do_not_disturb_alt),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text("This message was deleted"),
                ),
              ],
            ),
            leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "assets/Icons/Black Panther.jpg",
                )),
            trailing: const Text("2:19 pm"),
          ),
          ListTile(
            title: const Text(
              "Ant Man",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.keyboard_voice_rounded,
                  color: Colors.blue,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text("1:36"),
                ),
              ],
            ),
            leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "assets/Icons/Ant Man.jpg",
                )),
            trailing: const Text("3:01 pm"),
          ),
          ListTile(
            title: const Text(
              "Doctor Strange",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Row(
              children: const [
                Icon(Icons.image),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text("Photo"),
                ),
              ],
            ),
            leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "assets/Icons/Doctor Strange.jpg",
                )),
            trailing: const Text("5:10 pm"),
          ),
          ListTile(
            title: const Text(
              "Spider Man",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.done_all,
                  color: Colors.grey,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "Makeupinu Okke Oru Paridhi Illede",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/Icons/Spider Man.jpg")),
            trailing: const Text("Yesterday"),
          ),
          ListTile(
            title: const Text(
              "Dead Pool",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.done_all,
                  color: Colors.blueAccent,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Icon(
                    Icons.heart_broken,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/Icons/Deadpool.jpg")),
            trailing: const Text("Yesterday"),
          ),
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
