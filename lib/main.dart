import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/state/counterScreen.dart';
import 'package:flutter_getx/screens/state/favoriteScreen.dart';
import 'package:flutter_getx/screens/state/loginScreen.dart';
import 'package:flutter_getx/screens/state/statecomponents.dart';
import 'package:flutter_getx/screens/utlites/components.dart';
import 'package:flutter_getx/screens/utlites/home_screen.dart';
import 'package:flutter_getx/screens/utlites/languageScreen.dart';
import 'package:flutter_getx/screens/utlites/languages.dart';
import 'package:flutter_getx/screens/utlites/screenOne.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GetX Demo',
      translations: Languages(),
      getPages: [
        // GetPage(name: '/', page: () => const HomeScreen()),
        // GetPage(name: '/components', page: () => const Camponents()),
        // GetPage(name: '/ScreenOne', page: () => ScreenOne()),
        // GetPage(name: '/Languages', page: () => const LanguageScreen()),
        // GetPage(name: '/StateComponents', page: () => const StateComponents()),
        // GetPage(name: '/CounterScreen', page: () => const CounterScreen()),
        // GetPage(name: '/FavoriteScreen', page: () => const FavoriteScreen()),
        GetPage(name: '/', page: () => const LoginScreen())
      ],
    );
  }
}
