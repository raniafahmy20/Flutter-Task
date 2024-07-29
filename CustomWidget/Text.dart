import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {

  final FontWeight? fweight;
  final double? fsize;
  final Color? color;
  final String? text;
  const TextCustom({super.key,required this.color,required this.text,required this.fsize,required this.fweight});

  @override
  Widget build(BuildContext context) {
    return
    Text(text!,style: TextStyle(fontWeight:fweight,color: color,fontSize: fsize),);
  }
}
