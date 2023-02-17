import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ux/Screen/AppButton.dart';
import 'package:ux/Screen/Apptext.dart';
import 'package:ux/Screen/SignUp.dart';

class login extends StatelessWidget {
 static const String screenlogin='login_screen';
   login({Key? key}) : super(key: key);
final usernam=TextEditingController();
final password=TextEditingController();
 var Formkey=GlobalKey<FormState>();
void Signin(){
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: Formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                 const  Text(
                    "Welcome",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
                  ),
                 const SizedBox(
                    height: 10,
                  ),
                 const Center(
                      child: Icon(
                    Icons.lock,
                    size: 100,
                  )),
                const  SizedBox(
                    height: 10,
                  ),
                  const  Text("Welcome back you \'ve been missed",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.bold),),
                 const SizedBox(
                    height: 20,
                  ),
                  Apptext(
                      hint: "username",
                      fillcolor: Colors.white,
                      obsecure: false,
                      icons: Icons.person,
                      stylecolor: Colors.blueAccent,
                    controller: usernam,
                    validate: (String? value ){
                        if(value!.isEmpty){
                          return 'Please Enter your Email';
                        }
                        return null;
                    },
                  ),
                 const SizedBox(
                    height: 20,
                  ),
                  Apptext(
                      hint: "password",
                      fillcolor: Colors.white,
                      obsecure: true,
                      icons: Icons.person,
                    validate: (String? value ){
                     if(value!.isEmpty){
                       return 'Please Enter your password';
                     }
                     return null;
                    },
                      stylecolor: Colors.blueAccent, controller: password,),
                const  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forget Password?",style: TextStyle(color: Colors.grey[600],fontSize: 16),),
                    ],
                  ),
                 const SizedBox(
                    height: 10,
                  ),
                  //button Sign in
                  ElevatedButton(
                    onPressed: () {
                      if(Formkey.currentState?.validate()==false){
                        return;
                      }
                    },
                    child:  Text(
                      "Log in",
                      style: TextStyle(fontSize: 25),

                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                        padding:  MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 99,vertical: 15)),
                        shape:  MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(66)))
                    ),

                  ),
                //text continue
                const  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric( horizontal: 10.0),
                          child: Text("Or continue with",style: TextStyle(
                            color: Colors.grey[700],
                          ),),
                        ),
                        Expanded(child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ))
                      ],
                    ),
                  ),
                  //Button sign up
                const SizedBox(height: 20,),
                  Row(children: [
                    Text("Not a member?",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),),
                    SizedBox(width: 4,),
                    InkWell(onTap: () {
                      Navigator.pushNamed(context, SignUp.login);
                    },
                    child: Text("Register now",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                    )

                  ],)

                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
