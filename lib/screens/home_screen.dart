import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/screens/second_screen.dart';

import '../controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  // RxInt counter = 0.obs;

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print('home screen build');
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Obx(
              () => Text(
                'Counter ${homeController.counter.value}',
                style: TextStyle(fontSize: 20),
              ),
            ),
            // GetBuilder<HomeController>(
            //   builder: (controller) => Text(
            //     'Counter ${controller.counter.value}',
            //     style: TextStyle(fontSize: 20),
            //   ),
            // ),
            ElevatedButton(
              onPressed: () {
                homeController.counter.value++;

                print(homeController.counter.value);
              },
              child: Text('Count'),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(SecondScreen());
                },
                child: Text('Next')),
            ElevatedButton(
              onPressed: () {
                // ScaffoldMessenger.of(context)
                //     .showSnackBar(SnackBar(content: Text('Hello')));
                Get.showSnackbar(GetSnackBar(
                  snackPosition: SnackPosition.BOTTOM,
                  duration: Duration(seconds: 1),
                  message: 'Hello GetX',
                ));
              },
              child: Text('SnackBar'),
            ),
            ElevatedButton(
                onPressed: () {
                  // showDialog(context: context, builder: (_)=>)
                  Get.dialog(AlertDialog(
                    title: Text('Title'),
                    content: Text('message.....'),
                  ));
                },
                child: Text('Dialog')),
            ElevatedButton(
                onPressed: () async {
                  if (Theme.of(context).brightness == Brightness.dark)
                    Get.changeTheme(ThemeData.light());
                  else
                    Get.changeTheme(ThemeData.dark());
                },
                child: Text('Theme Mode')),
            Container(
              height: Get.height / 4,
              width: Get.width / 2,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
