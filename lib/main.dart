import 'package:flutter/material.dart';
import 'package:myapp/stack.dart';
import 'container.dart';
import 'listview.dart';
import 'listview2.dart';
import 'practice.dart';
import 'bottom.dart';
import 'container2.dart';

void main(List<String> args) {
  runApp(ContainerApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int count = 0;

    int? increaseCounter() {
      return count++;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New Flutter App',
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.add,
                  size: 30,
                ))
          ],
          leading: Icon(
            Icons.safety_check,
            size: 30,
          ),
          title: Text('New Flutter App'),
          elevation: 0,
          backgroundColor: Colors.green[900],
        ),
        body: Column(children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                '$count',
                style: TextStyle(
                  fontSize: 120,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: Colors.green[900]),
                      child: Row(
                        children: [Icon(Icons.add), Text('Increase')],
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: Colors.red[900]),
                      child: Row(
                        children: [Icon(Icons.remove), Text('Decrease')],
                      )),
                ],
              ))
        ]),
      ),
    );
  }
}
