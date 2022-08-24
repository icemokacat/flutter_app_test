import 'package:flutter/material.dart';
import 'package:flutter_app_kot_swift/screen/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MaterialApp(
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
      const Locale('ko', 'KR'),
      Locale('en', ''),
    ],
    home: HomeScreen(),
  ));
}
