import 'dart:math';

import 'package:flutter/material.dart';

class calc extends StatelessWidget {
  double? weight = 0.0;
  double? height = 0.0;
  calc({this.weight, this.height});

  @override
  Widget build(BuildContext context) {
    double _bmi = 0.0;
    String getBmi() {
      double _bmi = weight! / pow(height! / 100, 2);
      return _bmi.toStringAsFixed(1);
    }

    String isHealhty() {
      if (_bmi >= 25.0) {
        return "Not healthy OverWeight";
      } else if (_bmi > 18.0) {
        return "Normal Healthy";
      } else {
        return "Unhealthy underweight";
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.indigo,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                getBmi().toString(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),
              ),
              SizedBox(height: 12),
              Text(
                isHealhty(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),
              )
            ],
          ),
        ),
      ),
    );
  }
}
