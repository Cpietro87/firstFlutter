import 'package:flutter/material.dart';
import 'package:flutter_2/screens/consultas_screens.dart';
// import 'package:flutter_2/screens/switch_screens.dart';
// import 'package:flutter_2/screens/doctor_screens.dart';
// import 'package:flutter_2/screens/navBarNavigation.dart';
// import 'package:flutter_2/screens/user.dart';
// import 'package:flutter_2/screens/login.dart';
// import 'package:flutter_2/screens/home_screens.dart';
// import 'package:flutter_2/screens/counte_screens.dart';
// import 'package:flutter_2/screens/user_list.dart';



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
        // home: UserList(),
        // home: UserList(),
        // home: NavBar(),
        // home: ProfileDoctor(name: 'Pepe', patients: ['Argento', 'Pietro'], profession: 'Dentista', email: 'pepe@yahoo.com', phone: '1234', photoUrl: '',),
        // home: MultiSwitch()
        home: ConsultasMedicas(),
    );
  }
}

