import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proper_login/controller/homePageController.dart';

class HomePage extends StatelessWidget {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login')),
      ),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: firstnameController,
          decoration: InputDecoration(
              labelText: 'First Name',
              hintText: 'Enter first name',
              suffixIcon: Icon(Icons.abc),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: lastnameController,
          decoration: InputDecoration(
              labelText: "Last Name",
              hintText: 'Enter last name',
              suffixIcon: Icon(Icons.abc),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: usernameController,
          decoration: InputDecoration(
              labelText: 'User name',
              hintText: 'Enter username',
              suffixIcon: Icon(Icons.abc),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            controller.storeData(firstnameController.text,
                lastnameController.text, usernameController.text);
          },
          child: const Text('Submit'),
        ),
        const SizedBox(
          height: 20,
        ),
        Obx((() => Text(controller.homePageModel.firstname.value))),
        Obx((() => Text(controller.homePageModel.lastname.value))),
        Obx((() => Text(controller.homePageModel.username.value)))
      ]),
    );
  }
}
