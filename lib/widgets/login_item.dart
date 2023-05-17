import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fornasmala/pages/create_account.dart';
import 'package:fornasmala/pages/forgot_password.dart';
import 'package:fornasmala/pages/language.dart';
import 'package:fornasmala/pages/logout.dart';
import 'package:fornasmala/pages/my_profile.dart';
import 'package:fornasmala/theme.dart';

class LoginItem extends StatelessWidget {
  final String title;
  final String? route;

  const LoginItem({Key? key, required this.title, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        if (route != null) {
          if (route == 'forgot') {
            Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => const Forgotpassword()));
          }
        }
      }),
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Text(
          title,
          style: greysTextStyle.copyWith(
            fontSize: 14,
            fontWeight: semiBold,
          ),
        ),
        // child: Row(
        //   children: [
        //     Image.asset(
        //       iconUrl,
        //       width: 24,
        //       color: isLightMode ? kBlackColor : kWhiteColor,
        //     ),
        //     const SizedBox(
        //       width: 20,
        //     ),
        //     Text(
        //       title,
        //       style: blackTextStyle.copyWith(
        //         fontSize: 18,
        //         fontWeight: semiBold,
        //         color: isLightMode ? kBlackColor : kWhiteColor,
        //       ),
        //     ),
        //     const Spacer(),
        //     Icon(
        //       Icons.chevron_right,
        //       color: isLightMode ? kBlackColor : kGreyColor,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
