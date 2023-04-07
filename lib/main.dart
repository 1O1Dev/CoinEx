import 'package:coinex/pages/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const CoinEx());
}

class CoinEx extends StatelessWidget {
  const CoinEx({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.green,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    SystemChrome.setPreferredOrientations(
      const <DeviceOrientation>[
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ],
    );
    return MaterialApp(
      title: 'CoinEx',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const AppPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
