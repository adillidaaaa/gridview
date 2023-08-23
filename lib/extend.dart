import 'package:flutter/material.dart';

class Final extends StatelessWidget {
  const Final({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 96, 100, 111),
        title: Text("GRIDVIEW EXTEND"),
      ),
      backgroundColor: const Color.fromARGB(255, 217, 212, 198),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: GridView.extent(
              maxCrossAxisExtent: 50,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: const [Text("extend")],
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Previous"))
        ],
      )),
    );
  }
}
