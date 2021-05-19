import 'package:flutter/material.dart';
import '../../../core/utils/style.dart' as style;

class CounterBox extends StatelessWidget {
  CounterBox({this.number, this.title, this.color, this.onTap});

  final number;
  final String title;
  final Color color;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 130.0,
          height: 120.0,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: color,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      '$number',
                      style: style.dasboardBoxTextStyle,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(title),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
