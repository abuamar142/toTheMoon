import 'package:flutter/material.dart';

// ignore: camel_case_types
class Statefull_3 extends StatelessWidget {
  const Statefull_3({super.key});

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
  final nama = TextEditingController();
  final harga = TextEditingController();
  final deskripsi = TextEditingController();

  List<Benda> benda = [];

  void tambahBenda({
    required String namaBenda,
    required String hargaBenda,
    required String deskripsiBenda,
  }) {
    final bendaBaru = Benda(namaBenda, int.parse(hargaBenda), deskripsiBenda);
    setState(() {
      benda.add(bendaBaru);
      nama.text = "";
      harga.text = "";
      deskripsi.text = "";
    });
  }

  void populateTextEditingController({
    required List<Benda> listBenda,
    required int index,
  }) {
    setState(() {
      nama.text = listBenda[index].nama;
      harga.text = listBenda[index].harga.toString();
      deskripsi.text = listBenda[index].deskripsi;
    });
  }

  void editBenda(
      int index, String namaBenda, int hargaBenda, String deskBenda) {
    setState(() {
      benda[index].nama = namaBenda;
      benda[index].harga = hargaBenda;
      benda[index].deskripsi = deskBenda;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Benda'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: benda.length,
        itemBuilder: (BuildContext context, int index) {
          Benda dataBenda = benda[index];
          return ListTile(
            title: Text(dataBenda.nama),
            trailing: Text(dataBenda.harga.toString()),
            subtitle: Text(dataBenda.deskripsi),
            onTap: () {
              populateTextEditingController(listBenda: benda, index: index);
              showDialog(
                  context: context,
                  builder: ((context) {
                    return dialogForm(true, index: index);
                  }));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            showDialog(
              context: context,
              builder: ((context) {
                return dialogForm(false);
              }),
            );
          }),
    );
  }

  Dialog dialogForm(bool isEdit, {int? index}) {
    return Dialog(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10),
        child: SizedBox(
          width: 300,
          height: 270,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Masukkan data benda',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    TextField(controller: nama, textAlign: TextAlign.center),
                    TextField(controller: harga, textAlign: TextAlign.center),
                    TextField(
                        controller: deskripsi, textAlign: TextAlign.center),
                  ],
                ),
              ),
              TextButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    padding: MaterialStatePropertyAll(EdgeInsets.only(
                        left: 50, right: 50, top: 18, bottom: 18))),
                onPressed: () {
                  isEdit
                      ? editBenda(index!, nama.text, int.parse(harga.text),
                          deskripsi.text)
                      : tambahBenda(
                          namaBenda: nama.text,
                          hargaBenda: harga.text,
                          deskripsiBenda: deskripsi.text,
                        );
                  Navigator.pop(context);
                },
                child: Text(
                  isEdit ? "Edit" : "Tambah",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
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
