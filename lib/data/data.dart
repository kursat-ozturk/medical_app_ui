import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Services {
  final String image;
  final Color color;
  Services({
    required this.image,
    required this.color,
  });
}

//Services List of Data
List<Services> servicesList = [
  Services(
    image: 'assets/icons/doctor-Icon.svg',
    color: const Color(0xffDCEDF9),
  ),
  Services(
    image: 'assets/icons/noun-pill.svg',
    color: const Color(0xffFAF0DB),
  ),
  Services(
    image: 'assets/icons/noun-medical-test.svg',
    color: const Color(0xffD6F6FF),
  ),
  Services(
    image: 'assets/icons/noun-corona.svg',
    color: const Color(0xffF2E3E9),
  ),
];

//Upcoming Appointments
class Appointments {
  final String date;
  final String time;
  final String title;
  final String subTitle;
  final Color color;

  Appointments({
    required this.date,
    required this.time,
    required this.title,
    required this.subTitle,
    required this.color,
  });
}

//Upcoming Appointments List
List<Appointments> upcomingAppointmentsList = [
  Appointments(
    date: "12\nTue",
    time: DateFormat('hh:mm a').format(DateTime.now()),
    title: "Dr. Kürşat Öztürk",
    subTitle: "Neurology",
    color: const Color(0xff1C6BA4),
  ),
  Appointments(
    date: "12\nTue",
    time: DateFormat('hh:mm a').format(DateTime.now()),
    title: "Dr. Wise Ronny",
    subTitle: "Cardiology",
    color: const Color(0xff1C6BA4),
  ),
];
