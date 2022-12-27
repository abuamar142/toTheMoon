import 'package:flutter/material.dart';

class Layout_1 extends StatelessWidget {
  const Layout_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Layout 1",
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: [
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                ),
                const Text(
                  "Persegi panjang diatas adalah Container dengan tinggi 100, lebar 200, dan berwarna biru.",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: const [
                Text(
                  "Flutter to the moon",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
                Text(
                  "text diatas berukuran 18 dengan berwarna biru",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.yellow,
                    ),
                    const Text(
                      "ini adalah Material Button",
                      style: TextStyle(color: Colors.orange),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.green),
                    ),
                    const SizedBox(
                      width: 200,
                      child: Text(
                        "Ini adalah Container dengan decoration border radius",
                        style: TextStyle(color: Colors.green),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
