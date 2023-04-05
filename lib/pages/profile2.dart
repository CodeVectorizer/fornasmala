import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fornasmala/theme.dart';
import 'package:fornasmala/widgets/profile_menu_item.dart';

class Profile2 extends StatefulWidget {
  const Profile2({super.key});

  @override
  State<Profile2> createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  bool isLightMode = true;
  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 250),
      opacity: opacity,
      child: Scaffold(
        backgroundColor: isLightMode ? Color(0xffF1F5FF) : Color(0xff1F1D2B),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(30), bottom: Radius.circular(0)),
          // child: BottomNavigationBar(
          //   onTap: (value) {
          //     if (value == 0) {
          //       Navigator.pushNamed(context, '/home');
          //     } else if (value == 1) {
          //       Navigator.pushNamed(context, '/wishlist');
          //     }
          //   },
          //   showUnselectedLabels: false,
          //   showSelectedLabels: false,
          //   backgroundColor: isLightMode ? kWhiteColor : kDarkBackgroundColor,
          //   items: [
          //     BottomNavigationBarItem(
          //       icon: Image.asset(
          //         'assets/images/icon_home.png',
          //         width: 24,
          //         color: isLightMode ? kBlackColor : kWhiteColor,
          //       ),
          //       label: 'home',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Image.asset(
          //         'assets/images/news.png',
          //         width: 24,
          //         color: isLightMode ? kBlackColor : kWhiteColor,
          //       ),
          //       label: 'news',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Image.asset(
          //         'assets/images/icon_profile.png',
          //         width: 24,
          //         color: Colors.lightBlue,
          //       ),
          //       label: 'profile',
          //     ),
          //   ],
          // ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/Meliuk-liuk.png',
                  color: isLightMode ? null : Color(0xffD8D8D8),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 120,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30,
                        right: 25,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 56,
                                backgroundColor: Color(0xffF1F5FF),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.all(0), // Border radius
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/images/fotoprofile.png',
                                      fit: BoxFit.cover,
                                      width: 120,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 32,
                              ),
                              Text(
                                'Muhammad Rudy Darmawan',
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      isLightMode ? Colors.black : kWhiteColor,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '081236915300',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: isLightMode
                                        ? Colors.black
                                        : kWhiteColor),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isLightMode = !isLightMode;
                                opacity = 0;
                              });

                              Timer(Duration(milliseconds: 250), () {
                                setState(() {
                                  opacity = 1;
                                });
                              });
                            },
                            child: Container(
                              width: 88,
                              height: 44,
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: isLightMode
                                    ? kWhiteColor
                                    : kDarkBackgroundColor,
                              ),
                              child: AnimatedAlign(
                                  duration: Duration(milliseconds: 250),
                                  alignment: isLightMode
                                      ? Alignment.centerLeft
                                      : Alignment.centerRight,
                                  child: Image.asset(isLightMode
                                      ? 'assets/images/switch.png'
                                      : 'assets/images/switch2.png')),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 100),
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 30,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(36),
                          ),
                          color: isLightMode
                              ? Colors.white
                              : kDarkBackgroundColor),
                      child: Column(children: [
                        ProfileMenuItem(
                          iconUrl: 'assets/images/icon_profile.png',
                          title: 'My Profile',
                          isLightMode: isLightMode,
                        ),
                        ProfileMenuItem(
                          iconUrl: 'assets/images/changepass.png',
                          title: 'Change Password',
                          isLightMode: isLightMode,
                        ),
                        // ProfileMenuItem(
                        //   iconUrl: 'assets/images/lokasi.png',
                        //   title: 'Current Address',
                        //   isLightMode: isLightMode,
                        // ),
                        ProfileMenuItem(
                          iconUrl: 'assets/images/language.png',
                          title: 'Language',
                          isLightMode: isLightMode,
                        ),
                        // ProfileMenuItem(
                        //   iconUrl: 'assets/images/organisasi.png',
                        //   title: 'Organization',
                        //   isLightMode: isLightMode,
                        // ),
                        ProfileMenuItem(
                          iconUrl: 'assets/images/logout.png',
                          title: 'Logout',
                          isLightMode: isLightMode,
                        ),
                      ]),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
