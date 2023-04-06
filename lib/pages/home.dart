import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fornasmala/pages/activity/activity.dart';
import 'package:fornasmala/pages/campus/list_campus.dart';
import 'package:fornasmala/pages/kos/kos.dart';
import 'package:fornasmala/pages/organizer/organizer.dart';
import 'package:fornasmala/pages/transportation/transportation.dart';
import 'package:fornasmala/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            padding: EdgeInsets.zero,
          ),
          TextButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.location_pin,
                    color: Colors.white,
                  ),
                  Center(
                      child: Text(
                    'Lamongan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  )),
                ],
              )),
        ],
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                // decoration: BoxDecoration(
                //     image: DecorationImage(
                //   image: AssetImage(
                //     'assets/images/gapura.png',
                //   ),
                //   fit: BoxFit.cover,
                // )
                // ),
                color: Colors.lightBlue,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // margin: const EdgeInsets.only(top: 25),
                      child: const Text(
                        "Hello Rudy",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Please find a source you best to use",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.2)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Search',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: regular),
                            ),
                            Image.asset(
                              'assets/images/icon_search.png',
                              width: 24,
                              color: Colors.white,
                            )
                          ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                // height: 485,
                margin: const EdgeInsets.only(top: 150),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Color(0xffFAFBFF)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categories",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: semiBold),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 18,
                                fontWeight: semiBold),
                          ),
                        ],
                      ),
                      Container(
                        height: 70,
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.lightBlue),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "PULANG",
                                    style: TextStyle(
                                        color: Colors.yellow,
                                        fontSize: 16,
                                        fontWeight: semiBold),
                                  ),
                                  Text(
                                    "Pemuda Untuk Lamongan",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: semiBold),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset('assets/images/lamongan.png',
                                height: 50, width: 110, fit: BoxFit.fill),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                CupertinoPageRoute(
                                    builder: (context) => const KosPage())),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/kos.png',
                                  height: 100,
                                  width: 100,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Kos & Kontrakan')
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/makanan.png',
                                height: 100,
                                width: 100,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text('Food')
                            ],
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        const TransportationPage())),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/transportasi.png',
                                  height: 100,
                                  width: 100,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Transportation')
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        const ListCampusPage())),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/kampus.png',
                                  height: 100,
                                  width: 100,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Campus')
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        const OrganizerPage())),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/pengurus.png',
                                  height: 100,
                                  width: 100,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Organizer')
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context).push(
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        const ActivityPage())),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/kegiatan.png',
                                  height: 100,
                                  width: 100,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Activity')
                              ],
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
