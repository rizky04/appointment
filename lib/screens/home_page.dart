// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:appointment/components/appointment_card.dart';
import 'package:appointment/components/doctor_card.dart';
import 'package:appointment/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> medCat = [
    {
      "icon": FontAwesomeIcons.userDoctor,
      "category": "General",
    },
    {
      "icon": FontAwesomeIcons.heartPulse,
      "category": "Cardiologi",
    },
    {
      "icon": FontAwesomeIcons.lungs,
      "category": "Respirations",
    },
    {
      "icon": FontAwesomeIcons.hand,
      "category": "Dermatology",
    },
    {
      "icon": FontAwesomeIcons.personPregnant,
      "category": "Gynecology",
    },
    {
      "icon": FontAwesomeIcons.teeth,
      "category": "Dental",
    }
  ];
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      'Muhammad Rizky Amin',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/avatar.jpg'),
                      ),
                    ),
                  ],
                ),
                Config.spaceSmall,
                const Text(
                  'Category',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Config.spaceSmall,
                SizedBox(
                  height: Config.heightSize * 0.05,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List<Widget>.generate(medCat.length, (index) {
                      return Card(
                        margin: const EdgeInsets.only(right: 20),
                        color: Config.primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              FaIcon(
                                medCat[index]['icon'],
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                medCat[index]['category'],
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                Config.spaceSmall,
                const Text(
                  'Appointment Today',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ), Config.spaceSmall,
                AppointmentCard(),
                Config.spaceSmall,
                const Text('Top Doctor', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                //list off top doctoer 
                Config.spaceSmall,
                Column(
                  children: List.generate(10, (index) {
                    return const DoctorCard(
                      route: 'doctor_detail',
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
