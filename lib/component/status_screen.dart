import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(

          color: Colors.red,)),
        Expanded(child: Container(color: Colors.indigo,))
      ],
    );
  }
}
