import 'package:flutter/material.dart';

class ContainerApp extends StatelessWidget {
  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Container',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container'),
          backgroundColor: Colors.green[900],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.green[900],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                padding: const EdgeInsets.all(50),
                child: const Text('Container 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Container(
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: const Color.fromARGB(255, 244, 232, 0),
                        style: BorderStyle.solid,
                        width: 3)),
                child: const Text(
                  "Container 2",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                    border: Border.all(
                        color: const Color.fromARGB(233, 244, 232, 0),
                        style: BorderStyle.solid,
                        width: 3)),
                child: Text(
                  'Container 3',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
