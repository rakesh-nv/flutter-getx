import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/getx/favorite_getx.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  FavoriteController controller = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Obx(
            () {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: controller.imagePath.isNotEmpty
                        ? FileImage(File(controller.imagePath.toString()))
                        : null,
                  ),
                  TextButton(
                    onPressed: () {
                      controller.getImage();
                    },
                    child: Text('pick image'),
                  ),
                ],
              );
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: controller.fruitList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    if (controller.tempFruitList
                        .contains(controller.fruitList[index].toString())) {
                      controller.removeFavorite(
                          controller.fruitList[index].toString());
                    } else {
                      controller.addToFavorite(
                          controller.fruitList[index].toString());
                    }
                  },
                  title: Text(controller.fruitList[index]),
                  trailing: Obx(
                    () => Icon(
                      controller.tempFruitList
                              .contains(controller.fruitList[index].toString())
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: controller.tempFruitList
                              .contains(controller.fruitList[index].toString())
                          ? Colors.red
                          : Colors.black,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
