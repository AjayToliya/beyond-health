import 'package:flutter/material.dart';

class GlobalData {
  static button({required String text}) {
    return Container(
      height: 45,
      width: 110,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(40),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static button2({required dynamic icons}) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Icon(
        icons,
        color: Colors.white,
        size: 15,
      ),
    );
  }
}
