import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fornasmala/pages/main_page.dart';
import 'package:fornasmala/widgets/login_item.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/login.png',
              height: 300,
              width: 300,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color(0xff3AB4F2)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'please login your account',
                        style: TextStyle(
                          color: Color(0xffcdcdcd),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: const [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.only(top: 20),
                      isDense: true,
                      hintText: "Email",
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(),
                        child: Icon(Icons.mail),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.only(top: 20),
                      isDense: true,
                      hintText: "Password",
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(),
                        child: Icon(Icons.lock),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: LoginItem(
                    title: 'Forgot Password',
                    route: 'forgot',
                  ),
                  // child: Text(
                  //   textAlign: TextAlign.end,
                  //   'forgot password?',
                  //   style: TextStyle(
                  //     color: Color(0xffcdcdcd),
                  //     fontSize: 14,
                  //   ),
                  // ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  elevation: 10,
                  foregroundColor: Colors.white),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    CupertinoPageRoute(builder: (context) => const Mainpage()),
                    (route) => false);
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 135, vertical: 15),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Color(0xffcdcdcd), fontSize: 14),
                ),
                Text('Sign Up', style: TextStyle(color: Colors.lightBlue))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
