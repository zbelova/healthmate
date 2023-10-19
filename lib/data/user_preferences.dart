import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';



class UserPreferences {
  //создание переменной для сохранения preferences
  static SharedPreferences? _preferences;

  Future init() async => _preferences = await SharedPreferences.getInstance();

  //функция очистки сохраненных данных пользователя - вызывать если надо сбросить данные
  Future clear() async => _preferences?.clear();

}
