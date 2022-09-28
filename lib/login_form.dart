import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController textNameControlller = TextEditingController();
  LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 500,
              child: TextField(
                controller: textNameControlller,
                decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 500,
              child: TextField(
                controller: textNameControlller,
                decoration: InputDecoration(
                    labelText: 'UserName',
                    hintText: 'Enter your user name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 500,
              child: TextField(
                controller: textNameControlller,
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
