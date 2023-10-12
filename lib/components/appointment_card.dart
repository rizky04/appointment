import 'package:appointment/utils/config.dart';
import 'package:flutter/material.dart';

class AppointmentCard extends StatefulWidget {
  const AppointmentCard({super.key});

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Config.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.jpg'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Dr M Amin',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'dental',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
              Config.spaceSmall,
              //scheduleinfo
              const ShceduleCard(),
              Config.spaceSmall,
              //actionBUtton
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // NEW
                        ),
                        onPressed: () {},
                        child: Text('Cancel'),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent, // NEW
                        ),
                        onPressed: () {},
                        child: Text('Completed'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//schedule widget
class ShceduleCard extends StatelessWidget {
  const ShceduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          Icon(
            Icons.calendar_today,
            color: Colors.blueAccent,
            size: 15,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'Monday, 11/28/2023',
            style: TextStyle(
                color: Colors.blueAccent, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.access_alarm,
            color: Colors.blueAccent,
            size: 17,
          ),
          SizedBox(
            width: 5,
          ),
          Flexible(
              child: Text('2:00',
                  style: TextStyle(
                      color: Colors.blueAccent, fontWeight: FontWeight.bold)))
        ],
      ),
    );
  }
}
// appointment card is Done
//THE INFORMATION/DATA HERE WILL BE REPLACED BY API DATA AFRER DATABASE SETUP