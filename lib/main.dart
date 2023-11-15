import 'dart:async';
import 'package:flutter/services.dart';
import 'package:nobat_online/services/doctor_register_services.dart';
import 'package:flutter/material.dart';
import 'package:nobat_online/screen_viewer/reserv_geust.dart';
import 'package:nobat_online/screen_viewer/root.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WELCOME(),
    );
  }
}

//******************************************************* */
class WELCOME extends StatefulWidget {
  const WELCOME({super.key});

  @override
  State<WELCOME> createState() => _WELCOMEState();
}

class _WELCOMEState extends State<WELCOME> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Home();
      }));
      DOCTOR_RIGESTER_SERVICE.getdoctort_register_data();
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Reserv_geust();
      }));

      Navigator.pop(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: GestureDetector(
        child: Image.asset("assets/images/welcome.jpg"),
      ))),
    );
  }
}
//******************************************************* */
