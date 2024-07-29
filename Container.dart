import 'package:flutter/material.dart';
import 'package:traincourse/CustomWidget/Text.dart';

class CustomContainer extends StatelessWidget {
  final String? path;

  final bool im;
  final FontWeight? fweight;
  final double? fsize;
  final Color? color;
  final Color? colcontainer;
  final String? text;
  const CustomContainer({super.key, this.path,  required this.im, this.fweight,  this.fsize, this.color,  this.text, this.colcontainer});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colcontainer,
      child:im?Image(image: AssetImage(path!)):
      TextCustom(color: color, text: text, fsize: fsize, fweight: fweight),
    )
    ;
  }
}
