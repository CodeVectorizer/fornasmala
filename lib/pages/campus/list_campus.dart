import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fornasmala/config/CallApi.dart';
import 'package:fornasmala/models/campus.dart';
import 'package:fornasmala/pages/campus/detail_campus.dart';
import 'package:fornasmala/widgets/search_box.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListCampusPage extends StatefulWidget {
  const ListCampusPage({super.key});

  @override
  State<ListCampusPage> createState() => _ListCampusPageState();
}

class _ListCampusPageState extends State<ListCampusPage> {
  List listCampus = [
    {
      'logo': 'assets/images/logo_polije.png',
      'title': 'POLITEKNIK NEGERI JEMBER',
      'phone1': '+62 331 333533',
      'phone2': '+62 331 333531',
      'email': 'politeknik@polije.ac.id',
      'province': 'Jawa Timur',
      'camp1': {
        'domisili': 'Jember',
        'alamat': 'Jl. Mastrip PO BOX 164, Jember - Jawa Timur- Indonesia'
      },
      'camp2': {
        'domisili': 'Bondowoso',
        'alamat': 'Jl. KH. Wahid Hasyim No 41, Bondowoso - Jawa Timur'
      },
      'camp3': {
        'domisili': 'Nganjuk',
        'alamat': 'Jl. Gatot Subroto No 02, Nganjuk - Jawa Timur'
      },
      'camp4': {
        'domisili': 'Sidoarjo',
        'alamat':
            'Jl. Kutuk Barat gg. Sekolahan No 1 Sidokare, Sidoarjo - Jawa Timur'
      },
      'jurusan': [
        {'no': 1, 'name': 'Produksi Pertanian'},
        {'no': 1, 'name': 'Teknologi Pertanian'},
        {'no': 1, 'name': 'Peternakan'},
        {'no': 1, 'name': 'Manajemen Agribisnis'},
        {'no': 1, 'name': 'Teknologi Informasi'},
        {'no': 1, 'name': 'Bahasa, Komunikasi & Pariwisata'},
        {'no': 1, 'name': 'Kesehatan'},
        {'no': 1, 'name': 'Teknik'},
      ],
      'website': 'https://polije.ac.id/'
    },
    {
      'logo': 'assets/images/logo_unej.png',
      'title': 'UNIVERSITAS NEGERI JEMBER',
      'province': 'Jawa Timur',
      'phone1': '+62 331 333533',
      'phone2': '+62 331 333531',
      'email': 'politeknik@polije.ac.id',
      'camp1': {
        'domisili': 'Jember',
        'alamat': 'Jl. Mastrip PO BOX 164, Jember - Jawa Timur- Indonesia'
      },
      'camp2': {
        'domisili': 'Bondowoso',
        'alamat': 'Jl. KH. Wahid Hasyim No 41, Bondowoso - Jawa Timur'
      },
      'camp3': {
        'domisili': 'Nganjuk',
        'alamat': 'Jl. Gatot Subroto No 02, Nganjuk - Jawa Timur'
      },
      'camp4': {
        'domisili': 'Sidoarjo',
        'alamat':
            'Jl. Kutuk Barat gg. Sekolahan No 1 Sidokare, Sidoarjo - Jawa Timur'
      },
      'jurusan': [
        {'no': 1, 'name': 'Produksi Pertanian'},
        {'no': 1, 'name': 'Teknologi Pertanian'},
        {'no': 1, 'name': 'Peternakan'},
        {'no': 1, 'name': 'Manajemen Agribisnis'},
        {'no': 1, 'name': 'Teknologi Informasi'},
        {'no': 1, 'name': 'Bahasa, Komunikasi & Pariwisata'},
        {'no': 1, 'name': 'Kesehatan'},
        {'no': 1, 'name': 'Teknik'},
      ],
      'website': 'https://polije.ac.id/'
    },
    {
      'logo': 'assets/images/logo_unej.png',
      'title': 'UNIVERSITAS NEGERI JEMBER',
      'phone1': '+62 331 333533',
      'phone2': '+62 331 333531',
      'email': 'politeknik@polije.ac.id',
      'province': 'Jawa Timur',
      'camp1': {
        'domisili': 'Jember',
        'alamat': 'Jl. Mastrip PO BOX 164, Jember - Jawa Timur- Indonesia'
      },
      'camp2': {
        'domisili': 'Bondowoso',
        'alamat': 'Jl. KH. Wahid Hasyim No 41, Bondowoso - Jawa Timur'
      },
      'camp3': {
        'domisili': 'Nganjuk',
        'alamat': 'Jl. Gatot Subroto No 02, Nganjuk - Jawa Timur'
      },
      'camp4': {
        'domisili': 'Sidoarjo',
        'alamat':
            'Jl. Kutuk Barat gg. Sekolahan No 1 Sidokare, Sidoarjo - Jawa Timur'
      },
      'jurusan': [
        {'no': 1, 'name': 'Produksi Pertanian'},
        {'no': 1, 'name': 'Teknologi Pertanian'},
        {'no': 1, 'name': 'Peternakan'},
        {'no': 1, 'name': 'Manajemen Agribisnis'},
        {'no': 1, 'name': 'Teknologi Informasi'},
        {'no': 1, 'name': 'Bahasa, Komunikasi & Pariwisata'},
        {'no': 1, 'name': 'Kesehatan'},
        {'no': 1, 'name': 'Teknik'},
      ],
      'website': 'https://polije.ac.id/'
    },
  ];

  var campuses = <Campus>[];
  var isLoading = true;

  fetchData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    CallApi().getData('campuses').then((response) {
      var jsonData = json.decode(response.body);
      if (jsonData['success']) {
        Iterable list = jsonData['data'];
        print(jsonData['data']);
        setState(() {
          campuses = list.map((model) => Campus.fromJson(model)).toList();

          isLoading = false;
        });
      } else {
        print(jsonData['message']);
      }
    });
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: listCampus
                  .asMap()
                  .map((i, e) => MapEntry(
                      i,
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => DetailCampusPage(
                                    dataCampus: e,
                                  )));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: i == 0
                              ? const EdgeInsets.only(
                                  left: 14, right: 14, bottom: 14, top: 240)
                              : const EdgeInsets.all(14),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            children: [
                              Image.asset(
                                e['logo'],
                                width: 150,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '${e['title']}'.toUpperCase(),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Text(
                                e['province'],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                        ),
                      )))
                  .values
                  .toList(),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 220,
            color: Colors.lightBlue,
            padding: const EdgeInsets.all(14),
            child: Column(
              children: const [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'DAFTAR KAMPUS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                Text('berikut daftar kampus ternama yang ada di Indonesia',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                SearchBox(
                  color: Colors.white30,
                  textColor: Colors.white,
                  valueColor: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
