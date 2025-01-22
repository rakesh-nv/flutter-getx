import 'package:flutter/material.dart';
//import 'package:flutter_getx/home_screen.dart';
import 'package:flutter_getx/screens/components.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),

      // Routs
      
      // getPages: [
      //   GetPage(name: '/', page: () => HomeScreen()),
      //   GetPage(name: '/', page: () => HomeScreen()),
      //
      // ],
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<WidgetExample> example = [
    WidgetExample(
      title: 'Getx',
      backgroundColor: Colors.blue,
      builder: (context) => camponents(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1, mainAxisSpacing: 9),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: example[index].builder,
                ),
              );
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
  final Widget Function(BuildContext) builder;
  final Color? color;
  final Color? backgroundColor;
  final bool isFullScreen;

  WidgetExample({
    required this.title,
    required this.builder,
    this.color,
    this.backgroundColor,
    this.isFullScreen = false,
  });
}
