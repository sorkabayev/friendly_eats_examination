import 'package:flutter/material.dart';
import 'package:friendly_eats_examination/home_page.dart';
import 'package:friendly_eats_examination/web_page.dart';
class ControlPage extends StatefulWidget {
  const ControlPage({Key? key}) : super(key: key);

  static const String id = "control_page";

  @override
  _ControlPageState createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.shortestSide <= 1024 && MediaQuery.of(context).size.shortestSide > 600) {
      return WebPage();
    } else {
      return HomePage();
    }
  }
}