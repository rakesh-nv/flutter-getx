import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'screenOne.dart';

class camponents extends StatefulWidget {
  const camponents({super.key});

  @override
  State<camponents> createState() => _camponentsState();
}

class _camponentsState extends State<camponents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('all components'),
      ),
      body: Column(
        children: [
          // Getx Dilog Box
          Card(
            child: ListTile(
              title: const Text("Alert Dialog box"),
              subtitle: const Text('This is a Getx Dialog Box'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete chart',
                  content: const Column(
                    children: [
                      Text('cansel'),
                      Text('cansel'),
                      Text('cansel'),
                      Text('cansel'),
                    ],
                  ),
                  confirm: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('ok'),
                  ),
                  cancel: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('cansel'),
                  ),
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                );
              },
            ),
          ),
          // Getx bottom Sheet
          Card(
            child: ListTile(
              title: const Text("bottom sheet "),
              subtitle: const Text('This is a Getx bottom sheet'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ), Card(
            child: ListTile(
              title: const Text("Navigator"),
              subtitle: const Text('Go to next screen'),
              onTap: () {
                Get.to(navigateScreenOne(name: 'Rakesh',));
              },
            ),
          ),
        ],
      ),
    );
  }
}
