import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fornasmala/pages/food/detail_food.dart';
import 'package:fornasmala/widgets/my_indocator_tabbar.dart';
import 'package:fornasmala/widgets/rating_star.dart';

class HomeFoodPage extends StatefulWidget {
  const HomeFoodPage({super.key});

  @override
  State<HomeFoodPage> createState() => _HomeFoodPageState();
}

class _HomeFoodPageState extends State<HomeFoodPage>
    with SingleTickerProviderStateMixin {
  List bFood = [
    {
      'image': 'assets/images/food1.png',
      'name': 'Cherry Healthy',
      'rating': '4.5',
      'desc':
          'Makanan khas Jember yang cukup sering dibeli oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.',
      'ingred': 'Seledri, telur, blueberry, madu.',
      'address': 'Warung bu happy jln. Riau Jember',
      'price': '15.000'
    },
    {
      'image': 'assets/images/food2.png',
      'name': 'Burger Tamara',
      'rating': '4.5',
      'desc':
          'Makanan khas Jember yang cukup sering dibeli oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.',
      'ingred': 'Seledri, telur, blueberry, madu.',
      'address': 'Warung bu happy jln. Riau Jember',
      'price': '15.000'
    },
  ];

  List kFood = [
    {
      'image': 'assets/images/food3.png',
      'name': 'Soup Bumil',
      'rating': '4.1',
      'price': '289.000',
      'desc':
          'Makanan khas Jember yang cukup sering dibeli oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.',
      'ingred': 'Seledri, telur, blueberry, madu.',
      'address': 'Warung bu happy jln. Riau Jember',
    },
    {
      'image': 'assets/images/food4.png',
      'name': 'Chicken',
      'rating': '4.7',
      'price': '4.509.000',
      'desc':
          'Makanan khas Jember yang cukup sering dibeli oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.',
      'ingred': 'Seledri, telur, blueberry, madu.',
      'address': 'Warung bu happy jln. Riau Jember',
    },
    {
      'image': 'assets/images/food5.png',
      'name': 'Shrimp',
      'rating': '3.2',
      'price': '999.000',
      'desc':
          'Makanan khas Jember yang cukup sering dibeli oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.',
      'ingred': 'Seledri, telur, blueberry, madu.',
      'address': 'Warung bu happy jln. Riau Jember',
    },
  ];

  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.lightBlue,
              width: MediaQuery.of(context).size.width,
              // height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      )),
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: const Text(
                      'FOOD',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 21),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: bFood
                              .asMap()
                              .map((i, e) => MapEntry(
                                  i,
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          CupertinoPageRoute(
                                              builder: (context) =>
                                                  DetailFoodPage(
                                                    dFood: e,
                                                  )));
                                    },
                                    child: Container(
                                      // width: 120,
                                      margin: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(12),
                                                    topRight:
                                                        Radius.circular(12)),
                                            child: Image.asset(
                                              '${e['image']}',
                                              width: 200,
                                              height: 150,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(12),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '${e['name']}',
                                                  style: const TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    const StarRating(
                                                      rating: 4.5,
                                                      color:
                                                          Colors.orangeAccent,
                                                      size: 17.0,
                                                    ),
                                                    Text('${e['rating']}')
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )))
                              .values
                              .toList()),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                ],
              ),
            ),
            // Bottom Content
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TabBar(
                  unselectedLabelColor: Colors.black38,
                  labelColor: Colors.black,
                  dividerColor: Colors.black,
                  indicator: MyIndicatorTabbar(
                      color: Colors.black, height: 5, radius: 12),
                  // indicatorPadding: const EdgeInsets.symmetric(horizontal: 30),
                  isScrollable: true,
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),

                  tabs: const [
                    Tab(
                      text: 'New Taste',
                    ),
                    Tab(
                      text: 'Popular',
                    ),
                    Tab(
                      text: 'Recomended',
                    ),
                  ],
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.label,
                ),
                const Divider(
                  height: 0.0,
                ),

                // Body View

                SizedBox(
                  height: 500,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      buildProduct(),
                      const Center(child: Text('Popular')),
                      const Center(child: Text('Recomended')),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildProduct() {
    return Container(
      child: Column(
        children: kFood
            .asMap()
            .map((i, e) => MapEntry(
                i,
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => DetailFoodPage(
                              dFood: e,
                            )));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              '${e['image']}',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${e['name']}',
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                Text('IDR ${e['price']}',
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black38))
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              StarRating(
                                rating: double.tryParse('${e['rating']}')!,
                                color: Colors.orangeAccent,
                                size: 17.0,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text('${e['rating']}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38))
                            ],
                          )
                        ]),
                  ),
                )))
            .values
            .toList(),
      ),
    );
  }
}
