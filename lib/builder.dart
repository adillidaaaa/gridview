import 'package:flutter/material.dart';
import 'package:grid/custom.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 96, 100, 111),
        title: Text("GRIDVIEW BUILDER"),
      ),
      backgroundColor: const Color.fromARGB(255, 217, 212, 198),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return const Text("builder");
                },
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Third(),
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
