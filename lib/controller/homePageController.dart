import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:proper_login/model/homePageModel.dart';

class HomePageController extends GetxController {
  HomePageModel homePageModel = HomePageModel();
  final box = GetStorage();

  void storeData(String firstname, String lastname, String username) {
    box.write(
      'Firstname',
      firstname,
    );
    box.write(
      'Lastname',
      lastname,
    );
    box.write(
      'Username',
      username,
    );
    homePageModel.firstname.value = box.read('Firstname');
    homePageModel.lastname.value = box.read('Lastname');
    homePageModel.username.value = box.read('Username');
    print(homePageModel.firstname);
    print(homePageModel.lastname);
    print(homePageModel.username);
  }
}
