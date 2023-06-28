import 'package:flutter/material.dart';
import 'gmap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Coding with Ammar',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const MyHomePage(title: 'Coding Is Fun'));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Google Maps with Ammar',
                style: TextStyle(fontSize: 42),
              ),
              SizedBox(height: 20),
              Text(
                'Google maps location on San Andress',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: const Icon(Icons.map),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const GMap()),
        ),
      ),
    );
  }
}