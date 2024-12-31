import 'package:flutter/material.dart';
import 'package:planets_app/screens/detaild_screen.dart';
import 'package:planets_app/screens/home_screen.dart';
import 'package:planets_app/screens/log_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LogInScreen.routeName,
      routes: {
        LogInScreen.routeName : (context) => const LogInScreen(),
        HomeScreen.routeName : (context) =>  HomeScreen(),
        DetailsScreen.routeName : (context) =>  DetailsScreen(),
      },
    );
  }
}
