import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Call",style: TextStyle(
          fontSize: 25,
          color: Colors.black
      ),),
    );
  }
}
