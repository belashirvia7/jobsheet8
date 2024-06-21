import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jobsheet8'),
      ),
      body: SafeArea(
        child: Wrap(
          children: [
            buatKotak(Colors.greenAccent, 100),
            buatKotak(Colors.orangeAccent[400]!, 70),
            buatKotak(Colors.greenAccent, 50),
            buatKotak(Colors.orangeAccent[400]!, 90),
            buatKotak(Colors.red[300]!, 110),
            buatKotak(Colors.blue[300]!, 30),
            const Center(
              child: Text(
                'Bela Shirvia JobSheet8',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buatKotak(Color warna, double ukuran) {
  return Container(
    decoration: BoxDecoration(color: warna),
    height: ukuran,
    width: ukuran,
    margin: const EdgeInsets.all(10),
  );
}
