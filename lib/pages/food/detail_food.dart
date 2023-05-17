import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fornasmala/widgets/rating_star.dart';

class DetailFoodPage extends StatefulWidget {
  final Map? dFood;
  const DetailFoodPage({super.key, this.dFood});

  @override
  State<DetailFoodPage> createState() => _DetailFoodPageState();
}

class _DetailFoodPageState extends State<DetailFoodPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        widget.dFood!['image'],
                        height: 350,
                        // color: Colors.black12,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 350,
                      // color: Colors.black12,
                      padding: const EdgeInsets.only(top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Appbar
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.grey, blurRadius: 4)
                                        ]),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 14),
                                    padding: const EdgeInsets.all(8),
                                    child: const Icon(Icons.chevron_left),
                                  ),
                                ),
                                // GestureDetector(
                                //   onTap: () async {},
                                //   child: Container(
                                //     decoration: BoxDecoration(
                                //         color: Colors.white,
                                //         borderRadius:
                                //             BorderRadius.circular(100),
                                //         boxShadow: const [
                                //           BoxShadow(
                                //               color: Colors.grey, blurRadius: 4)
                                //         ]),
                                //     margin: const EdgeInsets.symmetric(
                                //         horizontal: 14),
                                //     padding: const EdgeInsets.all(8),
                                //     child: const Icon(Icons.share),
                                //   ),
                                // ),
                              ],
                            ),
                          ),

                          const SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                  top: 320,
                ),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                // padding: EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Text(
                              '${widget.dFood!['name']}',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 21.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Row(
                        children: [
                          StarRating(
                            rating:
                                double.tryParse('${widget.dFood!['rating']}')!,
                            color: Colors.orangeAccent,
                            size: 21.0,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text('${widget.dFood!['rating']}',
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38))
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 12),
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.dFood!['desc'],
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black38)),
                          const SizedBox(
                            height: 14,
                          ),
                          const Text('Ingredients: ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(widget.dFood!['ingred'],
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black38)),
                          const SizedBox(
                            height: 14,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.location_on_outlined),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(widget.dFood!['address'],
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.black38)),
                            ],
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Total Price: ',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black38)),
                              const SizedBox(
                                height: 5,
                              ),
                              Text('IDR ${widget.dFood!['price']}',
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.black)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
