import 'package:flutter/material.dart';
import 'package:traincourse/CustomWidget/Text.dart';

class TextButtonCustom extends StatelessWidget {
 final String text;
 final FontWeight fweight;
 final double fsize;
 final Color color;

  const TextButtonCustom({super.key,required this.text,required this.fsize,
   required this.fweight,required this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed:(){}, child:TextCustom(text: text,color: color ,
        fsize:fsize ,fweight:fweight ));
  }
}
