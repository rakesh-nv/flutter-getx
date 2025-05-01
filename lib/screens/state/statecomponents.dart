import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class StateComponents extends StatefulWidget {
  const StateComponents({super.key});

  @override
  State<StateComponents> createState() => _StateComponentsState();
}

class _StateComponentsState extends State<StateComponents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Components'),
      ),
      body: Column(
        children: [
          // Getx Dilog Box
          Card(
            child: ListTile(
              title: const Text("Count Screen"),
              subtitle: const Text('This is a Getx Count screen'),
              onTap: () {
                Get.toNamed('/CounterScreen');
              },
            ),
          ),
          // Getx bottom Sheet
          Card(
            child: ListTile(
              title: const Text("Favorites"),
              subtitle: const Text('This is a Getx Favorites'),
              onTap: () {
                Get.toNamed('/FavoriteScreen');
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Login api"),
              subtitle: const Text('Login Screen'),
              onTap: () {
                Get.toNamed('/LoginScreen');
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('languages'),
              subtitle: Text('Translation'),
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
