import 'package:flutter/material.dart';

// ignore: camel_case_types
class Layout_2 extends StatelessWidget {
  const Layout_2({super.key});

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
