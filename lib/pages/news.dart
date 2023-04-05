import 'package:flutter/material.dart';
import 'package:fornasmala/theme.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> with TickerProviderStateMixin {
  List Images = [
    "berita1.jpeg",
    "berita2.jpeg",
    "berita3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      backgroundColor: Color(0xffF1F5FF),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(30), bottom: Radius.circular(0)),
        // child: BottomNavigationBar(
        //   showUnselectedLabels: false,
        //   showSelectedLabels: false,
        //   backgroundColor: kWhiteColor,
        //   items: [
        //     BottomNavigationBarItem(
        //         icon: Image.asset(
        //           'assets/images/icon_home.png',
        //           width: 24,
        //         ),
        //         label: 'home'),
        //     BottomNavigationBarItem(
        //         icon: Image.asset(
        //           'assets/images/news.png',
        //           width: 24,
        //           color: Colors.lightBlue,
        //         ),
        //         label: 'news'),
        //     BottomNavigationBarItem(
        //         icon: Image.asset(
        //           'assets/images/icon_profile.png',
        //           width: 24,
        //         ),
        //         label: 'profile'),
        //   ],
        // ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Image.asset(
              'assets/images/Meliuk-liuk.png',
              color: Color(0xffD8D8D8),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      'DISCOVER',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      'News From Indonesia',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 50, right: 50),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: kWhiteColor,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Search News',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: semiBold),
                        ),
                        Image.asset(
                          'assets/images/icon_search.png',
                          width: 24,
                          color: Colors.grey,
                        )
                      ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      labelPadding: EdgeInsets.only(left: 20, right: 20),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(
                          text: "Hot News",
                        ),
                        Tab(
                          text: "News Indonesia",
                        ),
                        Tab(
                          text: "News Lamongan",
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: double.maxFinite,
                  height: 300,
                  child: TabBarView(controller: _tabController, children: [
                    ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return Container(
                            height: 300,
                            width: 200,
                            margin: const EdgeInsets.only(right: 10, top: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/" + Images[index]),
                                    fit: BoxFit.cover)),
                          );
                        }),
                    ListView.builder(
                        itemCount: 3,
                        itemBuilder: (_, index) {
                          return Container(
                            height: 300,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/" + Images[index]))),
                          );
                        }),
                    ListView.builder(
                        itemCount: 3,
                        itemBuilder: (_, index) {
                          return Container(
                            height: 300,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/" + Images[index]))),
                          );
                        })
                  ]),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
