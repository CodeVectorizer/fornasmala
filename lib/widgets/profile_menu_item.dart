import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fornasmala/pages/change_password.dart';
import 'package:fornasmala/pages/forgot_password.dart';
import 'package:fornasmala/pages/language.dart';
import 'package:fornasmala/pages/logout.dart';
import 'package:fornasmala/pages/my_profile.dart';
import 'package:fornasmala/theme.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final bool isLightMode;
  final String? route;

  const ProfileMenuItem(
      {Key? key,
      required this.iconUrl,
      required this.title,
      required this.isLightMode,
      this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        if (route != null) {
          if (route == 'myprofile') {
            Navigator.of(context).push(
                CupertinoPageRoute(builder: (context) => const Myprofile()));
          }
        }
        if (route != null) {
          if (route == 'changepassword')
            Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => const Changepassword()));
        }
        if (route != null) {
          if (route == 'language')
            Navigator.of(context).push(
                CupertinoPageRoute(builder: (context) => const Language()));
        }
        if (route != null) {
          if (route == 'logout')
            Navigator.of(context)
                .push(CupertinoPageRoute(builder: (context) => const Logout()));
        }
      }),
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          children: [
            Image.asset(
              iconUrl,
              width: 24,
              color: isLightMode ? kBlackColor : kWhiteColor,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
                color: isLightMode ? kBlackColor : kWhiteColor,
              ),
            ),
            const Spacer(),
            Icon(
              Icons.chevron_right,
              color: isLightMode ? kBlackColor : kGreyColor,
            ),
          ],
        ),
      ),
    );
  }
}
