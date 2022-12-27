import 'package:flutter/material.dart';

class Statefull_1 extends StatelessWidget {
  const Statefull_1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  void tambahAngka() {
    setState(() {
      angka.add(angka.length + 1);
    });
  }

  List angka = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text(
              angka[index].toString(),
            ),
          );
        },
        itemCount: angka.length,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        tambahAngka();
      }),
    );
  }
}
