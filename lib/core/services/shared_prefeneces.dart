
import 'package:shared_preferences/shared_preferences.dart';

class Pref {
  static late SharedPreferences _instatce;
  static Future<void> init() async {
    _instatce = await SharedPreferences.getInstance();
  }
  // ignore: strict_top_level_inference
  static setBool(String key, bool value)  {
     _instatce.setBool(key, value);
  }
  // ignore: strict_top_level_inference
  static getBool(String key)  {
    return _instatce.getBool(key)??false;
  }
}