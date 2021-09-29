import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:multi_screen_layout/multi_screen_layout.dart';
import 'package:multiscreen/pages/first.dart';
import 'package:multiscreen/pages/secound.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiScreenInfo(builder: (info) {
        return TwoPageLayout(
          child: FirstPage(info: info),
          secondChild: const SecoundPage(),
        );
      }),
    );
  }
}
