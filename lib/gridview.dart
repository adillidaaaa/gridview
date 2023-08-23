import 'package:flutter/material.dart';
import 'package:grid/builder.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 96, 100, 111),
          title: Text("GRIDVIEW"),
        ),
        backgroundColor: const Color.fromARGB(255, 217, 212, 198),
        body: SafeArea(
          child: Column(children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  Text('one'),
                  Text('two'),
                  Text('three'),
                  Text('four'),
                  Container(
                    height: 10,
                    width: 10,
                    color: Colors.amberAccent,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    color: const Color.fromARGB(255, 64, 255, 89),
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    color: Color.fromARGB(255, 255, 118, 64),
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    color: const Color.fromARGB(255, 64, 109, 255),
                  ),
                ],
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Second(),
                      ));
                },
                child: Text("Next"))
          ]),
        ));
  }
}
