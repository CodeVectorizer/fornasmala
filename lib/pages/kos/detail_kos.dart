import 'package:flutter/material.dart';
import 'package:fornasmala/widgets/my_separator.dart';

class DetailKosPage extends StatefulWidget {
  final Map? dk;
  const DetailKosPage({super.key, this.dk});

  @override
  State<DetailKosPage> createState() => _DetailKosPageState();
}

class _DetailKosPageState extends State<DetailKosPage> {
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
                  tag: widget.dk!['id'].toString(),
                  child: Image.network(
                    '${widget.dk!['image']}',
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
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 18),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: Colors.black38, width: 1)),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.image_outlined,
                              size: 45,
                            ),
                            Text(
                              'Foto',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 18),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: Colors.black38, width: 1)),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.slow_motion_video_rounded,
                              size: 45,
                            ),
                            Text(
                              'Video',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    '${widget.dk!['name']}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black26),
                            borderRadius: BorderRadius.circular(6)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 8),
                        child: Text(
                          'Kos ${widget.dk!['type']}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text('${widget.dk!['address']}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const MySeparator(
                    dashWidth: 3,
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Text(
                    'Kos dikelola oleh ${widget.dk!['pengelola']}',
                    maxLines: 4,
                  ),
                  Text(
                    '${widget.dk!['desc']}',
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
                      'Harga Kos: \nRp${widget.dk!['price']}/${widget.dk!['timePrice']}')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
