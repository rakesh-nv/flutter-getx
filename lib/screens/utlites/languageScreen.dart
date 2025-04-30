import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change Language')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('en', 'US'));
                  },
                  child: Text('English'),
                ),
                SizedBox(width: 40,),
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('kan', 'ka'));

                  },
                  child: Text('kannada'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
