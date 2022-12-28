import 'package:flutter/material.dart';

main() {
  runApp(const Statefull_2());
}

// ignore: camel_case_types
class Statefull_2 extends StatefulWidget {
  const Statefull_2({super.key});

  @override
  State<Statefull_2> createState() => _MyAppState();
}

class _MyAppState extends State<Statefull_2> {
  List<Benda> dataBenda = [];

  void tambahBenda({
    required String nama,
    required String harga,
    required String deskripsi,
  }) {
    final bendaBaru = Benda(nama, int.parse(harga), deskripsi);
    setState(() {
      dataBenda.add(bendaBaru);
    });
  }

  final nama = TextEditingController();
  final harga = TextEditingController();
  final deskripsi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List object'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 380,
                child: ListView.builder(
                  itemCount: dataBenda.length,
                  itemBuilder: (BuildContext context, int index) {
                    Benda benda = dataBenda[index];
                    return ListTile(
                      title: Text(benda.nama),
                      trailing: Text(benda.harga.toString()),
                      subtitle: Text(benda.deskripsi),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Center(
                child: SizedBox(
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Masukkan data barang',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Column(
                        children: [
                          TextField(
                              controller: nama, textAlign: TextAlign.center),
                          TextField(
                              controller: harga, textAlign: TextAlign.center),
                          TextField(
                              controller: deskripsi,
                              textAlign: TextAlign.center),
                        ],
                      ),
                      TextButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue),
                            padding: MaterialStatePropertyAll(EdgeInsets.only(
                                left: 100, right: 100, top: 18, bottom: 18))),
                        onPressed: () {
                          tambahBenda(
                            nama: nama.text,
                            harga: harga.text,
                            deskripsi: deskripsi.text,
                          );
                        },
                        child: const Text(
                          "Tambah",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Benda {
  String nama;
  int harga;
  String deskripsi;

  Benda(this.nama, this.harga, this.deskripsi);
}
