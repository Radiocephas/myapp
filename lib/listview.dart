import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main(List<String> args) {
  runApp(ListApp());
}

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Container',
        home: Scaffold(
          appBar: AppBar(
            title: Text('List'),
            backgroundColor: Colors.green[900],
          ),
          body: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, position) {
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey[900],
                              child: Icon(
                                Icons.person_pin_sharp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(wordPair.asPascalCase)
                          ],
                        ),
                        Icon(Icons.favorite_border_outlined),
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
