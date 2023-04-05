import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        elevation: 0,
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.location_pin),
          new Center(
              child: Text(
            'Lamongan',
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          )),
        ],
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
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
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Text(
                        "Hello Rudy",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Please find a source you best to use",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(10),
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
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 485,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Color(0xffFAFBFF)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
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
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.lightBlue),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
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
                                      fontSize: 14,
                                      fontWeight: semiBold),
                                ),
                              ],
                            ),
                            Image.asset('assets/images/lamongan.png',
                                height: 50, width: 110, fit: BoxFit.fill),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/kos.png',
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Kos & Kontrakan')
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/makanan.png',
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Food')
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/transportasi.png',
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Transportation')
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/kampus.png',
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Campus')
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/pengurus.png',
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Organizer')
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/kegiatan.png',
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Activity')
                            ],
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
