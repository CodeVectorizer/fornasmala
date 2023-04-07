import 'package:flutter/material.dart';

class DetailItemOrganizer extends StatefulWidget {
  final Map? menus;
  const DetailItemOrganizer({super.key, this.menus});

  @override
  State<DetailItemOrganizer> createState() => _DetailItemOrganizerState();
}

class _DetailItemOrganizerState extends State<DetailItemOrganizer> {
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
              width: MediaQuery.of(context).size.width,
              height: 200,
              margin: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                child: Icon(
                  Icons.add,
                  size: 42,
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(14),
                child: Text(
                    '${widget.menus!['name']} adalah s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')),
            Container(
              padding: const EdgeInsets.all(14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/ic_whatsapp.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('cp ikamala jember : 089908210381')
                    ],
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                    child: Row(
                      children: [
                        Image.asset('assets/images/ic_ig.png'),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text('@IkamalaJember')
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
