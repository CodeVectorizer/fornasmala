import 'package:flutter/material.dart';
import 'package:fornasmala/widgets/my_separator.dart';

class DetailTransportationPage extends StatefulWidget {
  final Map? dt;
  const DetailTransportationPage({super.key, this.dt});

  @override
  State<DetailTransportationPage> createState() =>
      _DetailTransportationPageState();
}

class _DetailTransportationPageState extends State<DetailTransportationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              child: Hero(
                  tag: widget.dt!['id'].toString(),
                  child: Image.network(
                    '${widget.dt!['image']}',
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.dt!['name']}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.car_crash_outlined),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text('Transmisi ${widget.dt!['transmisi']}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.chair),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text('${widget.dt!['capacity']}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text('${widget.dt!['address']}',
                            maxLines: 2,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  const MySeparator(
                    dashWidth: 3,
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Text(
                    '${widget.dt!['desc']}',
                    maxLines: 4,
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  const MySeparator(
                    dashWidth: 3,
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Text(
                      'Harga Sewa: \nRp${widget.dt!['price']}/${widget.dt!['timePrice']}')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
