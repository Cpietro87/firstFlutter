import 'package:flutter/material.dart';
import 'package:flutter_2/screens/user_list.dart';
// import 'package:flutter_2/screens/login.dart';
// import 'package:flutter_2/screens/home_screens.dart';
// import 'package:flutter_2/screens/counte_screens.dart';


void main() {
  runApp(const MyApp());
}

//generando widget para inicilizar app constructor
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        // home: HomeScreen()
        // home: CounterScreen()
        // home: LoginScreen()
        home: UserList(),
    );
  }
}
