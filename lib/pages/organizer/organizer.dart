import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fornasmala/config/CallApi.dart';
import 'package:fornasmala/models/organization.dart';
import 'package:fornasmala/pages/organizer/detail_oraganizer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrganizerPage extends StatefulWidget {
  const OrganizerPage({super.key});

  @override
  State<OrganizerPage> createState() => _OrganizerPageState();
}

class _OrganizerPageState extends State<OrganizerPage> {
  List menu = [
    {
      'name': 'Keorganisasian',
    },
    {
      'name': 'Tokoh',
    },
    {
      'name': 'Fragmen Sejarah',
    },
  ];

  var organizations = <Organization>[];
  var isLoading = true;

  fetchData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? studentId = preferences.get('student_id').toString();

    CallApi().getData('organizations/').then((response) {
      var jsonData = json.decode(response.body);
      if (jsonData['success']) {
        Iterable list = jsonData['data'];
        setState(() {
          organizations =
              list.map((model) => Organization.fromJson(model)).toList();

          isLoading = false;
        });
      } else {
        print(jsonData['message']);
      }
    });
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Organisasi'),
        elevation: 0.0,
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: menu
              .asMap()
              .map((i, e) => MapEntry(
                  i,
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => DetailOrganizer(
                              menus: e,
                            ))),
                    child: Container(
                      margin: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(children: [
                        Container(
                          padding: const EdgeInsets.all(21),
                          decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              '${i + 1}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Center(
                          child: Text(e['name'],
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                        )
                      ]),
                    ),
                  )))
              .values
              .toList(),
        ),
      ),
    );
  }
}
