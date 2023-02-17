import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ux/Screen/AppButton.dart';
import 'package:ux/Screen/login.dart';

class Start_Screen extends StatelessWidget {
  static const String b='onboard';
  const Start_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
Timer(const Duration(seconds: 5),(){
  Navigator.pushNamed(context, login.screenlogin);
});
    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/air.jpg'),
            ),
      ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 47, 84, 205),

            ),
            child:  MaterialButton(
                elevation: 6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Get Started',style: TextStyle(color: Colors.white,fontSize: 20),),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)
                  ],
                ),

                onPressed: (){
                  Navigator.pushNamed(context, login.screenlogin);
                }

            ),
          )

        ],
      ),

    );
  }
}
