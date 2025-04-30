import 'dart:async';

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            x++;
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(),
      body: Center(
        child: Text(
          x.toString(),
          style: const TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
