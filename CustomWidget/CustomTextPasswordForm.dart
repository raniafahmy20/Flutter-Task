import 'package:flutter/material.dart';

class CustomTextPasswordForm extends StatefulWidget {
  const CustomTextPasswordForm({super.key});

  @override
  State<CustomTextPasswordForm> createState() => _CustomTextPasswordFormState();
}

class _CustomTextPasswordFormState extends State<CustomTextPasswordForm> {
  bool secure=true;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        obscureText: secure,
        keyboardType: TextInputType.visiblePassword ,
        decoration: InputDecoration(border: OutlineInputBorder(borderRadius:
        BorderRadius.all(Radius.circular(120)),
        ),
            suffixIcon: IconButton(
              icon: secure?Icon(Icons.visibility_off):Icon(Icons.visibility),
              onPressed: (){
                setState(() {
                  secure=!secure;
                });
              },
            )
        )
        );
  }
}

