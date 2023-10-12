// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:appointment/screens/appoinment_page.dart';
import 'package:appointment/screens/home_page.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentPAge = 0;
  final PageController _page = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _page,
        onPageChanged: ((value) {
          setState(() {
            currentPAge = value;
          });
        }),
        children: const <Widget>[
          HomePage(),
          AppointmentPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPAge,
          onTap: (page) {
            setState(() {
              currentPAge = page;
              _page.animateToPage(page,
                  duration: const Duration(microseconds: 500),
                  curve: Curves.easeInOut);
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.house),
            label: 'Home'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month),
            label: 'Appointments'
            )
          ]),
    );
  }
}
