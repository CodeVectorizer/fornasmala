import 'package:flutter/material.dart';
import 'package:fornasmala/widgets/my_separator.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailCampusPage extends StatefulWidget {
  final Map? dataCampus;
  const DetailCampusPage({super.key, this.dataCampus});

  @override
  State<DetailCampusPage> createState() => _DetailCampusPageState();
}

class _DetailCampusPageState extends State<DetailCampusPage> {
  List? jurusan;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      jurusan = widget.dataCampus!['jurusan'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('INFO KAMPUS'),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    '${widget.dataCampus!['logo']}',
                    width: 150,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 14,
                        ),
                        Text(
                          '${widget.dataCampus!['title']}'.toUpperCase(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        Text(
                          widget.dataCampus!['province'],
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MySeparator(
                    dashWidth: 3,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    'Kampus Pusat',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(widget.dataCampus!['camp1']['alamat']),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(widget.dataCampus!['phone1']),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(widget.dataCampus!['phone2']),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(widget.dataCampus!['email']),
                  const SizedBox(
                    height: 12,
                  ),
                  Text('Kampus 2 - ${widget.dataCampus!['camp2']['domisili']}'),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(widget.dataCampus!['camp2']['alamat']),
                  const SizedBox(
                    height: 12,
                  ),
                  Text('Kampus 3 - ${widget.dataCampus!['camp3']['domisili']}'),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(widget.dataCampus!['camp3']['alamat']),
                  const SizedBox(
                    height: 12,
                  ),
                  Text('Kampus 4 - ${widget.dataCampus!['camp4']['domisili']}'),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(widget.dataCampus!['camp4']['alamat']),
                  const SizedBox(
                    height: 12,
                  ),
                  // Jurusan
                  const Center(
                      child: Text(
                    'Jurusan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: 5,
                      runSpacing: 5,
                      children: jurusan!
                          .asMap()
                          .map((i, e) => MapEntry(
                              i,
                              Text(
                                '${i + 1}. ${e['name']}',
                                maxLines: 1,
                              )))
                          .values
                          .toList(),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 14),
                    child: const MySeparator(
                      dashWidth: 3,
                    ),
                  ),
                  Row(
                    children: [
                      const Text('Link Website kampus: '),
                      TextButton(
                          onPressed: () {
                            _launchUrl(widget.dataCampus!['website']);
                          },
                          child: Text('${widget.dataCampus!['website']}'))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
