import 'package:flutter/material.dart';

class Materi_1 extends StatelessWidget {
  const Materi_1({super.key});

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

class Materi_2 extends StatelessWidget {
  const Materi_2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Layout 2',
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              color: Colors.purple,
              child: const Center(
                child: Text(
                  'Column 1',
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.yellow,
                    child: const Center(
                      child: Text(
                        'Column 2, Row 1',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.orange,
                    child: const Center(
                      child: Text(
                        'Column 2, Row 2',
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.purple,
                child: const Center(
                  child: Text(
                    'Column 3, Wrapped with Expanded widget',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
