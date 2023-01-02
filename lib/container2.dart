import 'package:flutter/material.dart';

class Container2App extends StatelessWidget {
  const Container2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Container',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.green[900],
          centerTitle: false,
          actions: [
            Wrap(
              runAlignment: WrapAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  size: 30,
                ),
                Icon(
                  Icons.more_vert,
                  size: 30,
                ),
              ],
            )
          ],
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 148, 0, 15),
                    offset: Offset(0, -10)),
                BoxShadow(
                  color: Color.fromARGB(255, 99, 99, 99),
                  offset: Offset(0, 7),
                  blurRadius: 20,
                  spreadRadius: -5,
                )
              ],
              borderRadius: BorderRadius.circular(20),
              color: Colors.green[900],
            ),
            child: Text(
              'Hello world',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
