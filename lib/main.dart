import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Widget tittleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Pantai Pulau Merah',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Banyuwangi, Jawa Timur',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
          ), 
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );
  

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(color, Icons.call, 'CALL'),
        buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Pantai Pulau Merah adalah salah satu destinasi wisata populer di Banyuwangi, Jawa Timur. '
        'Pantai ini terkenal dengan pasirnya yang berwarna merah muda dan ombaknya yang cocok untuk berselancar. '
        'Selain itu, pemandangan matahari terbenam di Pantai Pulau Merah sangat memukau, '
        'menjadikannya tempat yang ideal untuk bersantai dan menikmati keindahan alam. '
        '362458302036 - MUHAMMAD RENDRA IRAWAN',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: MUHAMMAD RENDRA IRAWAN 362458302036',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/pulau_merah.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            tittleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

Column buildButtonColumn(Color color, IconData icon, String label) {
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