import 'package:flutter/material.dart';



class CustomButtonIcon extends StatelessWidget {
  final Icon iconpasson;
  final Icon iconpassoff;
  final Icon iconemail;
   bool secure;
  final bool pass;
   Widget? widget;


   CustomButtonIcon({super.key,required this.iconemail,required this.iconpassoff,
  required this.iconpasson, this.secure=true, required this.pass, this.widget});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed:(){

      widget;

    }, icon:pass?(secure?iconpasson:iconpassoff):iconemail
    );


  }



}
