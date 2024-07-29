import 'package:flutter/material.dart';

import 'CustomButtonIcon.dart';

class CustomTextForm extends StatelessWidget {
  final bool securePass;
  final TextInputType textInputType;
  final double borderRedius;
  final Icon iconpasson;
  final Icon iconpassoff;
  final Icon iconemail;
  final bool pass;


  const CustomTextForm({super.key,required this.securePass,required this.textInputType,
    required this.borderRedius,required this.iconemail,required this.iconpassoff,
    required this.iconpasson,required this.pass, });

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        obscureText: securePass,
        keyboardType: textInputType,
        decoration: InputDecoration(border: OutlineInputBorder(borderRadius:
           BorderRadius.all(Radius.circular(borderRedius)),

        ),

            suffixIcon: CustomButtonIcon(iconemail: iconemail,iconpassoff:iconpassoff
              ,iconpasson:iconpasson ,
              pass:pass ,secure:securePass, )
        ))

    ;
  }


}
