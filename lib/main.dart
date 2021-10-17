import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:imthere_app/screens/home_screen.dart';

void main() {
  runApp(const ImThereApp());
}

class ImThereApp extends StatelessWidget {
  const ImThereApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 다국어 지원
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('ko', ''), // 한국어 지원, country code 없음
      ],

      debugShowCheckedModeBanner: false,    // debug 리본 제거
      title: 'Im There',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0.0,   // 앱바 하단의 그림자 제거
          backgroundColor: Colors.white,    // 앱바의 기본 배경색
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home:
        HomeScreen(),
    );
  }
}
