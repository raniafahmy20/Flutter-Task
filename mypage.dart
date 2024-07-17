import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mypage extends StatefulWidget {
  const mypage({super.key});

  @override
  State<mypage> createState() => _mypageState();
}

class _mypageState extends State<mypage> {
  bool password=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         ListView(children: [
            Column(children: [
             SizedBox(height: 40,),
               Container(
                child: Image(image: AssetImage("assets/undraw_login_re_4vu2 1.png")),
               ),


             Center(child: Text("Hello To Our App",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 30),)),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Email"),
                ),
              ],
            ),
            TextFormField(
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(120))),

               )
              ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text("Password"),
                  ),
                  SizedBox(width: 70,),
                  TextButton(onPressed:(){},

                      child:Text("Forget Password?"))
                ],
              ),

            TextFormField(
                obscureText: password,
                keyboardType: TextInputType.visiblePassword,

                decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(120)),

                    ),

                    suffixIcon: PasswordIcon() )
            ),

            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){}, child: Text("Login",style: TextStyle( fontSize: 30,color: Colors.white))
            ,style: ButtonStyle(fixedSize: MaterialStateProperty.all(Size(290, 60))

                    ,side: MaterialStatePropertyAll(BorderSide(style: BorderStyle.solid)),
                  backgroundColor: MaterialStateProperty.all(CupertinoColors.systemIndigo),
                  elevation: MaterialStateProperty.all<double>(30),overlayColor: MaterialStateProperty.all(Colors.black26)
                   )

            )

            , SizedBox(height: 50,)

            ,Row(children: [ SizedBox(width: 5,),  Text("Don’t You Have Account?"),
                             TextButton(onPressed:(){}, child:Text("Sign Up"))
            ])
                   ]),
         ]),

    );
  }
  Widget PasswordIcon(){


    return IconButton(onPressed:(){
       setState(() {
         password = !password;
       });
    }, icon:password?Icon(Icons.visibility_off):Icon(Icons.visibility));

  }
}
