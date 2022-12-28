import 'package:flutter/material.dart';

main() {
  runApp(const Statefull_2());
}

class Statefull_2 extends StatefulWidget {
  const Statefull_2({super.key});

  @override
  State<Statefull_2> createState() => _MyAppState();
}

class _MyAppState extends State<Statefull_2> {
  List<Barang> barang = [
    Barang(nama: "Buku tulis", harga: 3000, deskripsi: "Tempat untuk menulis"),
    Barang(nama: "Buku tulis", harga: 3000, deskripsi: "Tempat untuk menulis"),
    Barang(nama: "Buku tulis", harga: 3000, deskripsi: "Tempat untuk menulis"),
  ];

  void tambahBarang({
    required String nama,
    required String harga,
    required String deskripsi,
  }) {
    final barangBaru = Barang(
      nama: nama,
      harga: int.parse(harga),
      deskripsi: deskripsi,
    );
    setState(() {
      barang.add(barangBaru);
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
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: 300,
                height: 380,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Column(
                        children: [
                          Text('Nama = ${barang[index].nama}'),
                          Text('Harga = ${barang[index].harga.toString()}'),
                          Text('Deskripsi = ${barang[index].deskripsi}'),
                        ],
                      ),
                    );
                  },
                  itemCount: barang.length,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 300,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Masukkan data barang',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    TextField(
                      controller: nama,
                    ),
                    TextField(
                      controller: harga,
                    ),
                    TextField(
                      controller: deskripsi,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: MaterialButton(
                        onPressed: () {
                          tambahBarang(
                            nama: nama.text,
                            harga: harga.text,
                            deskripsi: deskripsi.text,
                          );
                        },
                        height: 40,
                        minWidth: 150,
                        color: Colors.blue,
                        child: const Text(
                          "Tambah",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Barang {
  String nama;
  int harga;
  String deskripsi;

  Barang({required this.nama, required this.harga, required this.deskripsi});
}
