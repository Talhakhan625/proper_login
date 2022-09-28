import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerScreen extends StatelessWidget {
  ContainerScreen({Key? key}) : super(key: key);

  RxInt isClick = 0.obs;
  // RxBool isClick2 = false.obs;
  void toggleFun() {
    isClick.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: toggleFun,
          child: Obx(
            () => Container(
              height: 300,
              width: 300,
              color: isClick.value == 0
                  ? Colors.amber
                  : isClick.value == 1
                      ? Colors.green
                      : isClick.value == 2
                          ? Colors.red
                          : Colors.teal,
              alignment: Alignment.center,
              child: Text('Container'),
            ),
          ),
        ),
      ),
    );
  }
}
