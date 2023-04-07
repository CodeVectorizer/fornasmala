import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fornasmala/pages/transportation/detail_transportation.dart';

class TransportationPage extends StatefulWidget {
  const TransportationPage({super.key});

  @override
  State<TransportationPage> createState() => _TransportationPageState();
}

class _TransportationPageState extends State<TransportationPage> {
  List dTrans = [
    {
      'image':
          'https://www.toyotamlg.com/ss/pm/toyotamalang_07M1A07aybm232150gfde9b72.jpg',
      'name': 'Toyota Grand New Avanza',
      'city': 'Jember',
      'price': '250.000',
      'timePrice': 'Hari',
      'type': 'Family Car',
      'cat': 'Rental Mobil',
      'transmisi': 'Manual',
      'capacity': '6 - 7 Penumpang',
      'address': 'Rental mobil agus Jln. Karimata no.47 Jember',
      'desc':
          'Info lebih lanjut hubungi nomer di bawah atau bisa dengan klik link whatsapp No telp/Whatsapp : 089508492563'
    },
    {
      'image':
          'https://img.lacakharga.com/public/images/2022/10/olx_634a148bd87c2809df0ebdb8_0.jpg',
      'name': 'Alphard 2015',
      'city': 'Jember',
      'price': '350.000',
      'timePrice': 'Hari',
      'type': 'Family Car',
      'cat': 'Rental Mobil',
      'transmisi': 'Manual',
      'capacity': '6 - 18 Penumpang',
      'address': 'Rental mobil agus Jln. Karimata no.47 Jember',
      'desc':
          'Info lebih lanjut hubungi nomer di bawah atau bisa dengan klik link whatsapp No telp/Whatsapp : 089508492563'
    },
    {
      'image':
          'https://media.wired.com/photos/5b86fce8900cb57bbfd1e7ee/master/w_2560%2Cc_limit/Jaguar_I-PACE_S_Indus-Silver_065.jpg',
      'name': 'Jaguar i-Pace Electric SUV',
      'city': 'Jember',
      'price': '500.000',
      'timePrice': 'Hari',
      'type': 'Family Car',
      'cat': 'Rental Mobil',
      'transmisi': 'Manual',
      'capacity': '6 - 7 Penumpang',
      'address': 'Rental mobil agus Jln. Karimata no.47 Jember',
      'desc':
          'Info lebih lanjut hubungi nomer di bawah atau bisa dengan klik link whatsapp No telp/Whatsapp : 089508492563'
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
              children: dTrans
                  .asMap()
                  .map((i, e) => MapEntry(
                      i,
                      GestureDetector(
                        onTap: () {
                          e['id'] = i.toString();
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => DetailTransportationPage(
                                    dt: e,
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
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Hero(
                                      tag: i.toString(),
                                      child: Image.network(
                                        '${e['image']}',
                                        width: 100,
                                        height: 130,
                                        fit: BoxFit.cover,
                                      )),
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
                                              '${e['type']}',
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
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black26),
                            borderRadius: BorderRadius.circular(25)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 8),
                        child: const Text(
                          'Rental Mobil',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black26),
                            borderRadius: BorderRadius.circular(25)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 8),
                        child: const Text(
                          'Rental Motor',
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
