import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fornasmala/pages/organizer/detail_item_organizer.dart';
import 'package:fornasmala/widgets/search_box.dart';

class DetailOrganizer extends StatefulWidget {
  final Map? menus;
  const DetailOrganizer({super.key, this.menus});

  @override
  State<DetailOrganizer> createState() => _DetailOrganizerState();
}

class _DetailOrganizerState extends State<DetailOrganizer> {
  List menu = [
    {'name': 'Ikamala Jember'},
    {'name': 'Ikamala Malang Raya'},
    {'name': 'Ikamala Uin Sunan Ampel Surabaya'},
    {'name': 'Forsimala Kediri'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Colors.lightBlue,
        title: Text(widget.menus!['name']),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(14),
              child: const SearchBox(
                textColor: Colors.white,
                valueColor: Colors.white,
              ),
            ),
            Column(
              children: menu
                  .asMap()
                  .map((i, e) => MapEntry(
                      i,
                      ListTile(
                        title: Text(e['name']),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () =>
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (context) => DetailItemOrganizer(
                                      menus: e,
                                    ))),
                      )))
                  .values
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
