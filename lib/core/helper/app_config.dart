import 'package:flutter/material.dart';

class AppConfig {
  final String appTitle;
  final String apiBaseUrl;
  final ThemeData themeData;


  static late AppConfig _instance;

  AppConfig._internal(this.appTitle, this.apiBaseUrl, this.themeData);

  static AppConfig get instance => _instance;

  factory AppConfig({required String appTitle, required String apiBaseUrl,required ThemeData themeData}) {
    _instance = AppConfig._internal(appTitle, apiBaseUrl,themeData);
    return _instance;
  }
}