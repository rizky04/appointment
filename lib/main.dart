import 'package:appointment/main_layout.dart';
import 'package:appointment/screens/auth_page.dart';
import 'package:appointment/utils/config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final navigatorKey = GlobalKey<NavigatorState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Doctor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.OutlinedBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          floatingLabelStyle: TextStyle(
            color: Config.primaryColor,
          ),
          prefixIconColor: Colors.black38,
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        )
      ),
      initialRoute: '/',
      routes: {
        //this is initial route of the app
        //which is auth page (login and sign up)
        '/':(context) => const AuthPage(),
        //this is for main layout after login
        'main':(context) => const MainLayout(),
      },
      // home: const MyHomePage(title: 'Flutter Doctor App'),
    );
  }
}