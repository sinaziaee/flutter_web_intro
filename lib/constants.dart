import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const double kSmallWidth = 360; // 360
const double kMediumWidth = 720; // 720
const double kLargeWidth = 1440; // 1440

// const double kSmallWidth = 650; // 360
// const double kMediumWidth = 1000; // 720
// const double kLargeWidth = 1440; // 1440

const double kNavBarHeight = 60;
const double kFootBarHeight = 50;
final Color kTextColor = Colors.grey.shade800;

void kNavigator(String destination){
  Get.toNamed(destination);
}

List<Widget> kSlides = [
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Text(
        '"If a machine is expected to be infallible, it cannot also be intelligent"',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Text(
        'Alan Turing',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Text(
        '"You do not really understand something unless you can explain it to your grandmother"',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Text(
        'Albert Einstein',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Text(
        '"You can have data without information, but you cannot have information without data."',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Text(
        'Daniel Keys Moran',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    ],
  ),
];