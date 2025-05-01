import 'dart:ui';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class FavoriteController extends GetxController {
  RxList<String> fruitList = ['Orange', 'Apple', 'Mango'].obs;
  RxList<dynamic> tempFruitList = [].obs;

  addToFavorite(String value) {
    tempFruitList.add(value);
  }

  removeFavorite(String value) {
    tempFruitList.remove(value);
  }

  // image picker

  RxString imagePath = ''.obs;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }
}
