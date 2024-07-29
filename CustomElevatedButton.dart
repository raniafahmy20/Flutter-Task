import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traincourse/CustomWidget/Text.dart';

class CustomElevatedButton extends StatelessWidget {
  final double buttonWidth ;
  final double buttonHeight ;
  final Color buttonBackgroundColor;
  final  BorderStyle borderStyle;
  final double elevation;
  final Color overlayColor;
  final String text;
  final double fontSizeText ;
  final FontWeight fweightText;
  final Color textColor;
  final Widget page;
  const CustomElevatedButton({super.key,required this.buttonWidth,required this.buttonHeight,
    required this.buttonBackgroundColor,required this.borderStyle,required this.elevation,
    required this.overlayColor,required this.text,required this.fontSizeText
  ,required this.textColor, required this.fweightText, required this.page});

  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context) => page ));

    }, child:

      TextCustom(text:text,fsize: fontSizeText,color: textColor,fweight:fweightText )

        ,style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size(buttonWidth, buttonHeight))
            ,side: MaterialStatePropertyAll(BorderSide(style: borderStyle)),
            backgroundColor: MaterialStateProperty.all(buttonBackgroundColor),
            elevation: MaterialStateProperty.all<double>(elevation),overlayColor: MaterialStateProperty.all(overlayColor)
        )

    );
  }
}
