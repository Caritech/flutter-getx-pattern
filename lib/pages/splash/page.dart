import '../../pages/login/page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 2500), () => Get.off(LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Color.fromRGBO(244, 233, 215, 1),
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash.gif',
              width: Get.width,
              height: Get.height - 400,
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'City Go Salesman App',
                //style: splashText,
              ),
            )
          ],
        ),
      ),
    );
  }
}
