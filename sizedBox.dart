import 'package:flutter/material.dart';

class sizedBoxCustom extends StatelessWidget {
 final double height, weight;
   const sizedBoxCustom({super.key, required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: height,width: weight,);
  }
}
