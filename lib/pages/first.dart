import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_screen_layout/multi_screen_layout.dart';
import 'package:multiscreen/controller/app_controller.dart';
import 'package:multiscreen/pages/secound.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key, required this.info}) : super(key: key);
  final MultiScreenLayoutInfoModel info;

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  AppController appController = Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('${(index + 1)}'),
          onTap: () {
            appController.selectItem = RxInt((index + 1));
            appController.update();
            if (widget.info.posture != DevicePosture.halfOpened) {
              Get.to(const SecoundPage());
            }
          },
        );
      },
    );
  }
}
