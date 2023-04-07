import 'package:flutter/material.dart';

class RulesKosPage extends StatefulWidget {
  const RulesKosPage({super.key});

  @override
  State<RulesKosPage> createState() => _RulesKosPageState();
}

class _RulesKosPageState extends State<RulesKosPage> {
  List<bool> checkedValue = [];
  List rules = [
    'Akses 24 jam',
    'Boleh Pasutri',
    'Boleh bawa hewan',
    'Maks. 2 orang/kamar',
    'Kos Putra',
    'Kos Putri',
    'Maksimal 2 orang (sewa harian)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Aturan Kos'),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 21),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ))
        ],
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: rules
                  .asMap()
                  .map((i, e) {
                    setState(() {
                      checkedValue.add(false);
                    });
                    return MapEntry(
                        i,
                        CheckboxListTile(
                          title: Text("$e"),
                          value: checkedValue[i],
                          onChanged: (newValue) {
                            setState(() {
                              checkedValue[i] = newValue!;
                            });
                          },
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ));
                  })
                  .values
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      checkedValue = [];
                    });
                  },
                  style: TextButton.styleFrom(),
                  child: const Text('Hapus'),
                ),
                TextButton(
                  onPressed: () {},
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.lightGreen),
                  child: const Text(
                    'Tampilkan Kos',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
