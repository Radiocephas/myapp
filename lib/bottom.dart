import 'package:flutter/material.dart';

class BottomApp extends StatelessWidget {
  const BottomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(indicatorColor: Colors.white, tabs: [
                Tab(
                  child: Icon(Icons.people_alt),
                ),
                Tab(
                  child: Text('CHATS'),
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(text: 'CALLS')
              ]),
              centerTitle: false,
              backgroundColor: Colors.green[900],
              title: Text(
                'WhatsApp',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      Icon(Icons.camera_alt_outlined),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.search),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                )
              ],
            ),
            body: ListView.separated(
              itemCount: 35,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    trailing: Column(
                      children: [Text('Yesterday')],
                    ),
                    title: Text("Title"),
                    subtitle: Text('This is a subtitle'),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: ((context, index) => Divider(
                    thickness: 1,
                    height: 2,
                  )),
            ),
          )),
    );
  }
}
