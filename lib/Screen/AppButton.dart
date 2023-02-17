import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
 final Function()? onTap;
 final String textbutton;
  const AppButton({Key? key,required this.onTap,required this.textbutton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Colors.black,
        borderRadius: BorderRadius.circular(8),
        ),
        
        child: Center(
          child:Text(textbutton,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
        ),

      ),
    );
  }
}
