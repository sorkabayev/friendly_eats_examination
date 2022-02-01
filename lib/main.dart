import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:friendly_eats_examination/control_page.dart';
import 'package:friendly_eats_examination/home_page.dart';
import 'package:friendly_eats_examination/web_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ControlPage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        WebPage.id: (context) => WebPage(),
      },
    );
  }
}
