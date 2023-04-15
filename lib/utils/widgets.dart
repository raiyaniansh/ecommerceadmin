import 'package:flutter/material.dart';

Widget TextF(TextEditingController a,String b) {
  return TextField(
    controller: a,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.grey),
      ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black),
        ),
      label: Text("$b",style: TextStyle(color: Colors.grey.shade700),)
    ),
  );
}
