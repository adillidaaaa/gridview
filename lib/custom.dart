import 'package:flutter/material.dart';
import 'package:grid/extend.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 96, 100, 111),
        title: Text("GRIDVIEW CUSTOM"),
      ),
      backgroundColor: const Color.fromARGB(255, 217, 212, 198),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GridView.custom(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                childrenDelegate: SliverChildBuilderDelegate((context, index) {
                  return Text(" ${index + 1} ");
                }, childCount: 150),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Final(),
                      ));
                },
                child: const Text("Next")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Previous")),
          ],
        ),
      ),
    );
  }
}
