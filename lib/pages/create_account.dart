import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

// Initial Selected Value
String dropdownvalue = 'Perguruan Tinggi';

// List of items in our dropdown menu
var items = [
  'Perguruan Tinggi',
  'Sekolah',
  'Umum',
];

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 56,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Create Account',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3AB4F2)),
                )),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.only(top: 20),
                      isDense: true,
                      hintText: 'nama lengkap',
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(),
                        child: Icon(Icons.person),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.only(top: 20),
                      isDense: true,
                      hintText: 'email',
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(),
                        child: Icon(Icons.mail),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: DropdownButtonFormField(
                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.only(top: 20),
                      isDense: true,
                      hintText: 'cth. Politeknik Negeri Jember',
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.only(top: 20),
                      isDense: true,
                      hintText: 'Alamat',
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(),
                        child: Icon(Icons.location_pin),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.only(top: 20),
                      isDense: true,
                      hintText: 'No Hp',
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(),
                        child: Icon(Icons.phone),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.only(top: 20),
                      isDense: true,
                      hintText: 'Password',
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(),
                        child: Icon(Icons.lock),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        elevation: 10,
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                      child: Text(
                        'Sign Up',
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
                        "You have an account?",
                        style:
                            TextStyle(color: Color(0xffcdcdcd), fontSize: 14),
                      ),
                      Text('Sign In', style: TextStyle(color: Colors.lightBlue))
                    ],
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
