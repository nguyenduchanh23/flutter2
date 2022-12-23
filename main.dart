import 'package:flutter/material.dart';
import 'package:login/my_orders.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'forgot_pass_screen.dart';
import 'setnew_pass_screen.dart';
import 'my_orders.dart';
void main() {

  runApp(
     const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Order",
      home: SignUpScreen(),
    ),
  );
}
