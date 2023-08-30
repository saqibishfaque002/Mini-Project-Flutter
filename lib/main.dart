import 'package:flutter/material.dart';
import 'package:mini_project/views/dashboards/dashboard.dart';
import 'views/home/home_screen2.dart';
import 'views/home/home_screen.dart';
import 'package:mini_project/views/splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Mini Project',
      theme: ThemeData(
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: SplashScreen(), // Show splash screen first
      home: Dashboard(), // Show splash screen first
      routes: {
        '/home': (context) => MyHomePage(
              title: '',
            ),
        '/home2': (context) => MyHomePage2(
              title: '',
            ),
        '/dashboard': (context) => Dashboard(),
      },
    );
  }
}