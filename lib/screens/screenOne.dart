import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components.dart';

class navigateScreenOne extends StatefulWidget {
  final String? name;

  const navigateScreenOne({super.key, this.name});

  @override
  State<navigateScreenOne> createState() => _navigateScreenOneState();
}

class _navigateScreenOneState extends State<navigateScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen one'),
      ),
      body: Center(
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is page one',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("My name is ${widget.name}"),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
