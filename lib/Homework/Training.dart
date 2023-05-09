import 'package:flutter/material.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              //di Column MainAxis ke bawah, dan ke kenan
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Batam, The province of Riau Islands',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Riau, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
// kita bisa mengontrol row dan colum menggunakan MainAxis dan CrossAxis
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      //row di MainAxis ke kanan, dan ke bawah
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Batam is the largest city in the province of Riau Islands, Indonesia. The city administrative area covers three main islands of Batam,'
        'Rempang, and Galang (collectively called Barelang), as well as Bulang to the west and several small islands.  '
        'Bulang Island and the islands to its north forming Belakang Padang District lie to the west of Batam Island but are also administratively within the city. '
        'Batam is an industrial boomtown, an emerging transport hub, and part of a free trade zone in the Indonesia. Malaysia. Singapore Growth Triangle, located 20 km (12 mi) of Singapore '
        'south coast and also part of the Indonesia–Malaysia–Thailand Growth Triangle.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Wonderful Indonesia',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wonderful Indonesia'),
        ),
        body: ListView(
          children: [
            Image.network(
              'https://asset.kompas.com/crops/E5PXxiyWflcL0wiDsrnPOcHYirA=/0x241:1600x1041/750x500/data/photo/2019/04/11/4167735203.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
