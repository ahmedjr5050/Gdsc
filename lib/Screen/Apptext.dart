import 'dart:ui';

import 'package:flutter/material.dart';

class Apptext extends StatelessWidget {
final Color fillcolor;
final Color stylecolor;
final String hint;
final IconData icons;
final bool obsecure;
final controller;
String? Function(String?) validate;
   Apptext({Key? key,required this.hint,required this.fillcolor,required this.obsecure,
    required this.controller,
    required this.validate,
    required this.icons,required this.stylecolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(color: Colors.blueAccent,fontSize: 20),
      obscureText: obsecure,
      validator: validate,
      decoration: InputDecoration(

        fillColor:fillcolor,
        filled: true,
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: stylecolor,

          ),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: stylecolor,
          ),
        ),
        prefixIcon:  Icon(
          icons,
        ),
      ),
    );
  }
}
