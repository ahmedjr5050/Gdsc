import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ux/Screen/AppButton.dart';
import 'package:ux/Screen/Apptext.dart';

class SignUp extends StatelessWidget {
  static const login='register_screen';
  SignUp({Key? key}) : super(key: key);
  final usernam = TextEditingController();
  final password = TextEditingController();
  final Email = TextEditingController();
  var Formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Sign up",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        )),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: Formkey,
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                  child: Apptext(
                      hint: "Username",
                      fillcolor: Colors.white,
                      obsecure: false,
                      controller: usernam,
                      icons: Icons.person,
                      validate: (String? value ){
                        if(value!.isEmpty){
                          return 'Please Enter your Email';
                        }
                        return null;
                      },
                      stylecolor: Colors.purple)),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Apptext(
                      hint: "Your Email:",
                      fillcolor: Colors.white,
                      obsecure: false,
                      controller: Email,
                      icons: Icons.email,
                      validate: (String? value ){
                        if(value!.isEmpty){
                          return 'Please Enter your Email';
                        }
                        return null;
                      },
                      stylecolor: Colors.blueAccent)),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Apptext(
                      hint: "Password:",
                      fillcolor: Colors.white,
                      obsecure: true,
                      controller: password,
                      icons: Icons.lock,
                      validate: (String? value ){
                        if(value!.isEmpty){
                          return 'Please Enter your password';
                        }
                        return null;
                      },
                      stylecolor: Colors.blueAccent)),
              SizedBox(
                height: 50,
              ),
             AppButton(onTap: (){
               if(Formkey.currentState?.validate()==false){
                 return;
               }
             }, textbutton: "Create")
            ],
          ),
        ),
      ),
    );
    backgroundColor:
    Colors.white;
  }
}
