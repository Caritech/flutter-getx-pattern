import '../../pages/dashboard/page.dart';

import './controller.dart';
import '../../core/utils/style.dart' as style;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Controller controller = Get.put(Controller()); // controller

    return Scaffold(
      appBar: AppBar(
        title: Text('CityGO Salesman App'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: Get.height,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 50.0),
              Image.asset(
                'assets/images/app_logo.png',
                width: 100,
                height: 100,
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: style.inputBoxStyle.copyWith(
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                decoration: style.inputBoxStyle.copyWith(
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(DashboardPage());
                  },
                  child: Text('Login', style: style.loginTextStyle),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Forgot Password',
                    style: style.forgotPasswordTextStyle),
              )
            ],
          ),
        ),
      ),
    );
  }
}
