import 'package:flutter/material.dart';
import 'package:flutter_e_wallet_app/ui/pages/history_page.dart';
import 'package:flutter_e_wallet_app/ui/pages/home_page.dart';
import 'package:flutter_e_wallet_app/ui/pages/main_page.dart';
import 'package:flutter_e_wallet_app/ui/pages/topup_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      routes: {
        '/main': (context) => MainPage(),
        '/topup': (context) => TopUpPage(),
        '/history': (context) => HistoryPage(),
      },
    );
  }
}
