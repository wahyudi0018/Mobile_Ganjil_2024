import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Membuat kolom bagian kiri pada judul
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), 
      child: Row(
        children: [
          Expanded(
            // soal 1: Expanded untuk menyesuaikan ruang yang tersisa
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // soal 2: Baris pertama teks di dalam Container dengan padding
                Container(
                  padding: const EdgeInsets.only(bottom: 8), 
                  child: const Text(
                    'Perkemahan Danau Oeschinen',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                    ),
                  ),
                ),
                // soal 2: Teks kedua dengan warna abu-abu
                const Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey, 
                  ),
                ),
              ],
            ),
          ),
          // soal 3: Ikon bintang dengan warna merah
          const Icon(
            Icons.star,
            color: Colors.red, 
          ),
          // soal 3: Teks dengan nilai 41
          const Text('41'),
        ],
      ),
    );

    // Method untuk membangun kolom dengan ikon dan teks
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

    // Membuat widget untuk buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Membuat widget untuk textSection
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Danau Oeschinen, yang terletak di atas Kandersteg, adalah danau pegunungan yang masih asli,'
        'dialiri oleh aliran glasial dari puncak Blüemlisalp, Oeschinenhorn, Fründenhorn,'
        'dan Doldenhorn setinggi tiga ribu meter. Orang yang suka berenang, pecinta alam,' 
        'dan pendaki gunung bisa bersenang-senang di sini. Wahyudi_2241720018',
        softWrap: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout: Wahyudi_2241720018',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // Mengatur body dengan titleSection, buttonSection, dan textSection
        body: ListView(
          children: [
            Image.asset('assets/images/lake.jpg',
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
}
