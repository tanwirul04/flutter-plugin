import 'package:flutter/material.dart';

void main() {
  runApp(const HomePlugin());
}

class HomePlugin extends StatelessWidget {
  const HomePlugin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless vs Statefull',
      home: CounterApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StaticPage extends StatelessWidget {
  const StaticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ini adalah staic page"),
        leading: Icon(Icons.person),
        actions: [
          SizedBox(
            width: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.shopping_basket),
                Icon(Icons.settings),
                Icon(Icons.search),
              ],
            ),
          ),
        ],
      ),
      body: Center(child: Text("ini adalah text didalam center dan scaffold")),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("contoh statefull wiged"),
            SizedBox(height: 20),
            Text('Nilai Counter : $count'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: incrementCount,
              child: Icon(Icons.plus_one),
            ),
          ],
        ),
      ),
    );
  }
}
