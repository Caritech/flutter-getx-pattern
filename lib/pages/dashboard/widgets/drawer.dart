import '../../../pages/login/page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Salesmand name'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Customer Lists'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Quotation Lists'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Setting'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () {
              Get.offAll(LoginPage());
            },
          ),
        ],
      ),
    );
  }
}
