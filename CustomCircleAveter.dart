import 'package:flutter/material.dart';

class CustomCircleAvater extends StatelessWidget {
  final String path;
  const CustomCircleAvater({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 60,
      child: Image(image: AssetImage(path)),
    );
  }
}
