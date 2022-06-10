import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controller/home_controller.dart';

class SecondScreen extends StatelessWidget {
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Column(
        children: [
          Obx(
            () => Text(
              'Count ${homeController.counter.value}',
              style: TextStyle(fontSize: 50),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                homeController.counter = homeController.counter++;
              },
              child: Text('Count')),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text('Back'),
          ),
        ],
      ),
    );
  }
}
