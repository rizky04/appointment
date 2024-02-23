// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:appointment/components/custom_appbar.dart';
import 'package:appointment/core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorDetail extends StatefulWidget {
  const DoctorDetail({Key? key}) : super(key: key);

  @override
  State<DoctorDetail> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  @override
  bool isFav = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appTitle: 'Doctor Details',
        icon: const FaIcon(Icons.arrow_back_ios),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isFav = !isFav;
                });
              },
              icon: FaIcon(isFav ? Icons.favorite_rounded : Icons.favorite_outline, color: Colors.red,))
        ],
      ),
      body:  SafeArea(
        child:  Column(
        children:  <Widget>[
          AboutDoctor(), DetailBody(),
        ],
      )),
    );
  }
}

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 65.0,
            backgroundImage: AssetImage('assets/avatar.jpg'),
            backgroundColor: Colors.white,
          ),
          Config.spaceMedium,
          const Text(
            'Dokter Amin',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Config.spaceSmall,
          SizedBox(
           
            child: Text(
              'Universitas Trunojyo madura Pendidikan Informatika 2013',
              style: TextStyle(
               color: Colors.white,
               fontSize: 15,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}


class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 30),
      child: const Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const <Widget>[
        Config.spaceSmall,
        DoctorInfo(),
      ],
      ),
    );
  }
}



class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Row(
      children: <Widget>[
        Expanded(child:
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Config.primaryColor,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 15,
          ),
          child: const Column(
            children: const <Widget>[
              Text('Patties', style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              ),
              SizedBox(height: 10,),
              Text(
                '109',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}



class InfoCard extends StatelessWidget {
  const InfoCard({required this.label, required this.value ,super.key});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

