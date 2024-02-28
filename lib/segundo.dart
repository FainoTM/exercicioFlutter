import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Segundo App em Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Segundo App em flutter',
        imageUrls: [
          'https://portalserradocipo.com.br/wp-content/uploads/2021/01/vale-do-travessao.jpg',
          'https://static3.depositphotos.com/1003352/162/i/450/depositphotos_1621068-stock-photo-green-valley.jpg',
          'https://st3.depositphotos.com/1993283/13370/i/450/depositphotos_133704468-stock-photo-mountain-valley-during-sunrise.jpg',
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.imageUrls});

  final String title;
  final List<String> imageUrls;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter = (_counter + 1) % widget.imageUrls.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        toolbarHeight: 100,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            widget.imageUrls[_counter],
            fit: BoxFit.cover,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Icon(Icons.refresh_rounded, color: Colors.deepOrangeAccent),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBar(
        color: Colors.deepOrange,
        height: 60,
      ),
    );
  }
}
