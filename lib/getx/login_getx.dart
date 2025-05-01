import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emilController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loding = false.obs;

  void loginApi() async {
    loding.value=true;
    try {
      final response = await post(Uri.parse('https://reqres.in/api/login'),
              body: {
        'email': emilController.value.text,
        'password': passwordController.value.text,
      });
      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        loding.value=false;
        Get.snackbar('Login Successfull', data['']);
      } else {
        print(emilController.value.text);
        print(passwordController.value.text);
        loding.value=false;
        Get.snackbar('Login Failed', data['error']);
      }
    } catch (e) {
      loding.value=false;
      Get.snackbar('Exception', e.toString());
    }
  }
}
