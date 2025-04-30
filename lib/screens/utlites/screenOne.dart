import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  var name;
  ScreenOne({super.key,this.name});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen one'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'Rakesh',
            'Hi rakesh you are doing good',
            margin: const EdgeInsets.symmetric(
              horizontal: 20
            ),
            backgroundColor: Colors.red,
          );
        },child:Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
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
              child: Text("${Get.arguments[1]}"+"${Get.arguments[0]}"),
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
