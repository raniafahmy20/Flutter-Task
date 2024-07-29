import 'package:flutter/material.dart';

class PaddingCustomWidget extends StatelessWidget {
  final String text;
  final double value;
  const PaddingCustomWidget({super.key,required this.text,required this.value});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(value),
      child: Text(text),
    );
  }
}
