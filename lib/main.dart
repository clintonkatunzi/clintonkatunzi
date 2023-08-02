import 'package:flutter/material.dart';
// import 'package:sample_commerce/homepage.dart';
// import 'registration.dart';
// import 'login.dart';
// import 'home.dart';
import 'NewHome.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Genge',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
