import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controller.dart';
import 'widgets/CounterBox.dart';
import 'widgets/drawer.dart';
import '../../core/utils/style.dart' as style;

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: DashboardDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                'Welcome Salesman',
                style: style.h2TextStyle,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CounterBox(
                    number: 2,
                    title: 'Pending Submit',
                    onTap: () {},
                    color: Colors.amber,
                  ),
                  CounterBox(
                    number: 2,
                    title: 'Submitted',
                    onTap: () {},
                    color: Colors.green,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
