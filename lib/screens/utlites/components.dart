import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Camponents extends StatefulWidget {
  const Camponents({super.key});

  @override
  State<Camponents> createState() => _CamponentsState();
}

class _CamponentsState extends State<Camponents> {
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
                  content: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text('Light Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text('Dark Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                          Navigator.pop(context);
                        },
                      ),
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
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light Theme'),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme'),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
                title: const Text("Navigator"),
                subtitle: const Text('Go to next screenOne'),
                onTap: () {
                  Get.toNamed('/ScreenOne',
                      arguments: ['Rakesh nv', 'My name is: ']);
                }),
          ),
          Card(
            child: ListTile(
              title: Text('languages'),
              subtitle: Text('Translation'),
              onTap: () {
                Get.toNamed('/Languages');
              },
            ),
          )
        ],
      ),
    );
  }
}

class Cards {
  final String title;
  final String subtitle;
  final String next;

  Cards({
    required this.title,
    required this.subtitle,
    required this.next,
  });
}
