import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fornasmala/theme.dart';

class Kos extends StatefulWidget {
  const Kos({super.key});

  @override
  State<Kos> createState() => _KosState();
}

class _KosState extends State<Kos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFBFF),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kWhiteColor,
          elevation: 0,
          title: Row(
            children: [
              Icon(
                Icons.chevron_left,
                color: kBlackColor,
              ),
              SizedBox(
                width: 18,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Color(0xffFAFBFF),
                    borderRadius: BorderRadius.circular(14)),
                child: Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration.collapsed(hintText: 'search'),
                    ))
                  ],
                ),
              ))
            ],
          )),
      body: Center(child: Text('Search')),
    );
  }
}
