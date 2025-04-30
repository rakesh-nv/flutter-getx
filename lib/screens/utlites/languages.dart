import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'What is your name',
          'name': 'Rakesh nv',
        },
        'kan_KA': {
          'message': 'ನಿನ್ನ ಹೆಸರೇನು',
          'name': 'ರಾಕೇಶ್ ಎನ್ವಿ',
        }
      };
}
