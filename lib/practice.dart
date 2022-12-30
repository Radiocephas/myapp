import 'package:flutter/material.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text('News App'),
        ),
        body: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text('Sports',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.green[900],
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 98, 98, 98))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text('Lifestyle',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 182, 182, 182))),
                    ),
                    SizedBox(width: 10),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Faith',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 182, 182, 182))),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[300]),
                                  padding: EdgeInsets.all(20),
                                  child: Icon(
                                    Icons.image,
                                    size: 50,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 200,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'This is the heading',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'This is the content. I really don\'t have anything to fix in so I am typing this rubbish',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Icon(Icons.favorite_outline_outlined)
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
