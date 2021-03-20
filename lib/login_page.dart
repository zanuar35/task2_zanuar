import 'package:flutter/material.dart';
import 'package:task2_zanuar/main_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return MainPage();
                  }));
                },
                child: Text("Next"))));
  }
}
