import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main(List<String> args) {
  runApp(ListApp2());
}

class ListApp2 extends StatelessWidget {
  const ListApp2({super.key});

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Container',
        home: Scaffold(
          appBar: AppBar(
            title: Text('List 2'),
            backgroundColor: Colors.green[900],
          ),
          body: ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Initial list ${index.bitLength}'),
                        Icon(
                          Icons.favorite,
                          color: Colors.green[900],
                        )
                      ]),
                ),
              );
            },
            itemCount: 30,
            separatorBuilder: (context, index) {
              return Card(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Separator $index'),
                      Icon(
                        Icons.favorite,
                        color: Colors.red[900],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
