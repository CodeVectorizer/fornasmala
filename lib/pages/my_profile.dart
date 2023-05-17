import 'package:flutter/material.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F5FF),
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(),
        ),
        elevation: 0,
        backgroundColor: Colors.lightBlue,
        leading: const BackButton(
          color: Colors.white, // <-- SEE HERE
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 56,
                      backgroundColor: Color(0xffF1F5FF),
                      child: Padding(
                        padding: const EdgeInsets.all(0), // Border radius
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
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Edit Picture',
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.edit)
                      ],
                    ),
                    SizedBox(
                      height: 65,
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 60),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Full Name',
                                style: TextStyle(
                                  color: Color(0xff9B9B9B),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    contentPadding: EdgeInsets.only(top: 0),
                                    isDense: true,
                                    labelText: ''),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: Text(
                                'No Hp',
                                style: TextStyle(
                                  color: Color(0xff9B9B9B),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    contentPadding: EdgeInsets.only(top: 0),
                                    isDense: true,
                                    labelText: ''),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              child: Text(
                                'Address',
                                style: TextStyle(
                                  color: Color(0xff9B9B9B),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    contentPadding: EdgeInsets.only(top: 0),
                                    isDense: true,
                                    labelText: ''),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blueAccent),
                                  child: Text("Save")),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xffF1F5FF),
                                      side: BorderSide(
                                          color: Colors.blueAccent, width: 2)),
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(color: Colors.blueAccent),
                                  )),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
