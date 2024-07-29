import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traincourse/CustomWidget/CustomTextPasswordForm.dart';

import 'CustomWidget/Container.dart';
import 'CustomWidget/CustomElevatedButton.dart';
import 'CustomWidget/CustomTextFormField.dart';
import 'CustomWidget/Text.dart';
import 'CustomWidget/TextButton.dart';
import 'CustomWidget/paddingCustom.dart';
import 'CustomWidget/sizedBox.dart';
import 'home.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool password=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         ListView(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
             const sizedBoxCustom(height: 40, weight: 0,),
             const CustomContainer(im: true,path:"assets/undraw_login_re_4vu2 1.png" ,),
             const Center(
                 child: TextCustom(text: "Hello To Our App",color: Colors.deepPurple,fsize: 30 ,fweight:FontWeight.bold ,)
                 ),
                   const PaddingCustomWidget(text:"Email",value: 8.0,),
                  const CustomTextForm(securePass: false,textInputType:TextInputType.emailAddress,borderRedius: 120,
                     iconemail:Icon(Icons.email),pass:false, iconpasson:Icon(Icons.add),iconpassoff: Icon(Icons.add_alert) ),
              Row(
                children: [
                   const PaddingCustomWidget(text:"Password" ,value: 9.0),
                   const sizedBoxCustom(weight: 70,height: 0),
                   const TextButtonCustom(text: "Forget Password?",fweight:FontWeight.normal
                        ,fsize:15 ,color: Colors.deepPurple, )
                    ],
                ),
                     CustomTextPasswordForm()
                           ,
              const sizedBoxCustom(height: 25,weight: 0,),
              const Center(
                child: const CustomElevatedButton(buttonWidth: 290,buttonHeight: 60,text:"Login",elevation: 30,borderStyle: BorderStyle.solid,
                  overlayColor:Colors.black26,buttonBackgroundColor:CupertinoColors.systemIndigo ,fontSizeText: 30,textColor:
                  Colors.white,fweightText: FontWeight.bold,page: Home()),
              ),

              const sizedBoxCustom(height: 50,weight: 0)

              ,Row(children: [
                 const sizedBoxCustom(weight: 5,height: 0),
                 const TextCustom(text:"Don’t You Have Account?", color: Colors.black,fsize:15
                   ,fweight: FontWeight.normal, ),
                 const  TextButtonCustom(text:"Sign Up",fweight:FontWeight.bold ,fsize: 17,
                    color: Colors.deepPurple,)
                 ])
                   ]),
         ]),
    );
  }
  

  }



