import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fornasmala/pages/kos/detail_kos.dart';
import 'package:fornasmala/pages/kos/rules_kos.dart';

class KosPage extends StatefulWidget {
  const KosPage({super.key});

  @override
  State<KosPage> createState() => _KosPageState();
}

class _KosPageState extends State<KosPage> {
  List dKos = [
    {
      'image':
          'https://blog.cokro.com/wp-content/uploads/2021/12/1_v2Utx4Ba-XPEvT-xw8GwoA-1.jpeg',
      'name': 'Kos Putra Barokah',
      'city': 'Jember',
      'facility': 'Kamar mandi luar - wifi - dapur',
      'price': '300.000',
      'timePrice': 'Bulan',
      'type': 'Putra',
      'cat': 'Kos Andalan',
      'address': 'Kecamatan sumbersari',
      'pengelola': 'Ibu Siti',
      'desc':
          'Untuk info lebih lanjut bisa hubungi nomer dibawah atau bisa klik link whatsapp No telp/whatsapp : 085788307151'
    },
    {
      'image':
          'https://blog.cokro.com/wp-content/uploads/2021/12/1_v2Utx4Ba-XPEvT-xw8GwoA-1.jpeg',
      'name': 'Kos Putri Barokah',
      'city': 'Jember',
      'facility': 'Kamar mandi dalam - wifi - dapur',
      'price': '800.000',
      'timePrice': 'Bulan',
      'type': 'Putri',
      'cat': 'Kos Pilihan Baru',
      'address': 'Kecamatan sumbersari',
      'pengelola': 'Ibu Siti',
      'desc':
          'Untuk info lebih lanjut bisa hubungi nomer dibawah atau bisa klik link whatsapp No telp/whatsapp : 085788307151'
    },
    {
      'image':
          'https://blog.cokro.com/wp-content/uploads/2021/12/1_v2Utx4Ba-XPEvT-xw8GwoA-1.jpeg',
      'name': 'Kos Cantik',
      'city': 'Jember',
      'facility': 'Kamar mandi dalam - wifi - dapur',
      'price': '700.000',
      'timePrice': 'Bulan',
      'type': 'Putri',
      'cat': 'Kos Pilihan Baru',
      'address': 'Kecamatan sumbersari',
      'pengelola': 'Ibu Siti',
      'desc':
          'Untuk info lebih lanjut bisa hubungi nomer dibawah atau bisa klik link whatsapp No telp/whatsapp : 085788307151'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: dKos
                  .asMap()
                  .map((i, e) => MapEntry(
                      i,
                      GestureDetector(
                        onTap: () {
                          e['id'] = i.toString();
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => DetailKosPage(
                                    dk: e,
                                  )));
                        },
                        child: Container(
                          margin: i == 0
                              ? const EdgeInsets.only(
                                  left: 14, right: 14, bottom: 14, top: 145)
                              : const EdgeInsets.all(14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Hero(
                                  tag: i.toString(),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: Image.network(
                                      '${e['image']}',
                                      width: 100,
                                      height: 130,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.black26),
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 3, horizontal: 8),
                                            child: Text(
                                              '${e['cat']}',
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.black26),
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 3, horizontal: 8),
                                            child: Text(
                                              'Kos ${e['type']}',
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '${e['name']}',
                                        maxLines: 2,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on_outlined,
                                            size: 18,
                                          ),
                                          Text(
                                            '${e['city']}',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '${e['facility']}',
                                        maxLines: 3,
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        '${e['price']}/${e['timePrice']}',
                                        textAlign: TextAlign.end,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      )))
                  .values
                  .toList(),
            ),
          ),
          Container(
            // margin: const EdgeInsets.only(top: 35),
            height: 130,
            decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 2)]),
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Colors.black54,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Expanded(
                      child: TextField(
                        controller: TextEditingController(),
                        style: const TextStyle(color: Colors.black54),
                        decoration: const InputDecoration(
                            hintText: "Cari",
                            hintStyle: TextStyle(color: Colors.black54),
                            // icon: Icon(Icons.search),
                            contentPadding: EdgeInsets.all(8),
                            fillColor: Colors.white,
                            // prefixIcon: Icon(Icons.search),
                            // prefixIconColor: Colors.white,
                            filled: true,
                            isDense: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black54, width: 1.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black54, width: 1.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black54, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chat_outlined,
                          color: Colors.black54,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.black54,
                        ))
                  ],
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            CupertinoPageRoute(
                                builder: (context) => const RulesKosPage())),
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.black26),
                              borderRadius: BorderRadius.circular(25)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 8),
                          child: const Text(
                            'Filter',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black26),
                            borderRadius: BorderRadius.circular(25)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 8),
                        child: const Text(
                          'Kos Andalan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black26),
                            borderRadius: BorderRadius.circular(25)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 8),
                        child: const Text(
                          'Kos Pilihan Baru',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
