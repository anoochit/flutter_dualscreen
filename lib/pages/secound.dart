import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiscreen/controller/app_controller.dart';

class SecoundPage extends StatefulWidget {
  const SecoundPage({Key? key}) : super(key: key);

  @override
  _SecoundPageState createState() => _SecoundPageState();
}

class _SecoundPageState extends State<SecoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<AppController>(
          init: AppController(),
          builder: (controller) => Text('Select = ${controller.selectItem}'),
        ),
      ),
    );
  }
}
