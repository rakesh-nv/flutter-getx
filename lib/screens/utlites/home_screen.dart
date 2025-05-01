import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<WidgetExample> example = [
    WidgetExample(
      title: 'Ut lites',
      backgroundColor: Colors.blue,
      next: 'components',
    ),
    WidgetExample(
      title: 'Getx State',
      backgroundColor: Colors.blue,
      next: 'StateComponents',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          mainAxisSpacing: 9,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.toNamed('/${example[index].next}');
            },
            child: Card(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    example[index].title,
                  ),
                )),
          );
        },
        itemCount: example.length,
      ),
    );
  }
}

class WidgetExample {
  final String title;
  final Color? color;
  final Color? backgroundColor;
  final bool isFullScreen;
  final String next;

  WidgetExample({
    required this.title,
    this.color,
    this.backgroundColor,
    this.isFullScreen = false,
    required this.next,
  });
}
