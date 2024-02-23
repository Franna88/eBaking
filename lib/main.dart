import 'package:ebaking/AboutUS.dart';
import 'package:ebaking/ApplyNow.dart';
import 'package:ebaking/CareerPath.dart';
import 'package:ebaking/ContactUs.dart';
import 'package:ebaking/CourseInformation.dart';
import 'package:ebaking/components/Buttons/AboutUsButton.dart';
import 'package:ebaking/components/NavBar.dart';
import 'package:ebaking/components/CustomShapePath/TriangleDownShape.dart';
import 'package:ebaking/components/ContactInfo.dart';
import 'package:ebaking/landingPage.dart';
import 'package:ebaking/page2.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

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
      title: 'Flutter Demo',
      home: Material(
        type: MaterialType.transparency,
        child: LandingPage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
            child: ClipPath(
              clipper: ClippingClass(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: height / 1.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("imges/about_us.png"))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
