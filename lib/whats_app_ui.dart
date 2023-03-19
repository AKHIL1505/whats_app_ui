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

var name = [
  "Thor",
  "Hulk",
  "Iron Man",
  "Captain America",
  "Black Panther",
  "Ant Man",
  "Doctor Strange",
  "Spider Man",
  "Dead Pool"
];
var message = [
  "Purushuvinu Ippo Yudham Onnum Ille.",
  "Aareda Naari Nee",
  "Varu Namukkonnu Kandam Vazhi Odiyittu Varam",
  "Thalararuth Raman Kuttee",
  "Wonderful. Onnaanmtharam aayittund.",
  "Kaavile Pattumalsarathinu Kaanaam",
  " Ee Kittiyath Onnumalla. Sharikkullath Kittaan Pokunnathe Ullu.",
  "Makeupinu Okke Oru Paridhi Illede",
  "Poda"
];
var image = [
  "assets/Icons/Thor.jpg",
  "assets/Icons/Hulk.jpg",
  "assets/Icons/IronMan.jpg",
  "assets/Icons/Captain America.jpg",
  "assets/Icons/Black Panther.jpg",
  "assets/Icons/Ant Man.jpg",
  "assets/Icons/Doctor Strange.jpg",
  "assets/Icons/Spider Man.jpg",
  "assets/Icons/Deadpool.jpg"
];
var timing = [
  "10:23 am",
  "10:50 am",
  "11:05 am",
  "1:56 pm",
  "2:19 pm",
  "3:01 pm",
  "5:10 pm",
  "Yesterday",
  "Yesterday"
];

var myIcons = [
  const Icon(
    Icons.done_all,
    color: Colors.blueAccent,
  ),
  const Icon(
    Icons.done,
    color: Colors.grey,
  ),
  const Icon(
    Icons.done_all,
    color: Colors.grey,
  ),
  const Icon(
    Icons.missed_video_call,
    color: Colors.red,
  ),
  const Icon(
    Icons.do_not_disturb_alt,
    color: Colors.grey,
  ),
  const Icon(
    Icons.keyboard_voice_rounded,
    color: Colors.blueAccent,
  ),
  const Icon(
    Icons.image,
    color: Colors.grey,
  ),
  const Icon(
    Icons.done_all,
    color: Colors.grey,
  ),
  const Icon(
    Icons.done_all,
    color: Colors.blueAccent,
  )
];

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff128C7E),
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
