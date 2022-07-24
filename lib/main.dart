import 'package:flutter/material.dart';

import 'Homepage.dart';

void main() {
  runApp(
    homepage(),
  );
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: bmi(),
    );
  }
}
