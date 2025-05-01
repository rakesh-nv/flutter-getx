import 'package:flutter/material.dart';
import 'package:flutter_getx/getx/login_getx.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login/Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emilController.value,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(hintText: 'password'),
            ),
            SizedBox(height: 20),
            Obx(
              () {
                return InkWell(
                  onTap: () {
                    controller.loginApi();
                  },
                  child: Container(
                    height: 45,
                    color: Colors.grey,
                    child: Center(
                      child: controller.loding.value
                          ? CircularProgressIndicator()
                          : Text('Login'),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
