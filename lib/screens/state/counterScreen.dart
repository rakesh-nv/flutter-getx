import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../getx/count_getx.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.countIncrement();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Obx(
              () {
                return Text(
                  controller.counter.toString(),
                  style: const TextStyle(fontSize: 60),
                );
              },
            ),
          ),
          Obx(
            () => Container(
              height: 100,
              color: Colors.red.withOpacity(controller.opacity.value),
            ),
          ),
          Obx(
            () => Slider(
              value: controller.opacity.value,
              onChanged: (value) {
                controller.setOpacity(value);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Notifications'),
              Obx(
                () => Switch(
                  value: controller.notification.value,
                  onChanged: (value) {
                    controller.setSwitch(value);
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
