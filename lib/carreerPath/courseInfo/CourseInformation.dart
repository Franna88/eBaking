import 'package:ebaking/carreerPath/courseInfo/CourseInfoDesktopSlider.dart';
import 'package:ebaking/carreerPath/courseInfo/CourseInfoMobileSlider.dart';
import 'package:ebaking/AboutUs/AboutUsButton.dart';
import 'package:ebaking/carreerPath/courseInfo/CourseInfoButton.dart';
import 'package:ebaking/components/Footer/ContactInfo.dart';
import 'package:ebaking/components/Footer/ContactInfroMobile.dart';
import 'package:ebaking/components/CustomShapePath/TriangleDownShape.dart';
import 'package:ebaking/components/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/MyUtil.dart';

final List courselist = [
  {
    'imagePath': 'imges/Rectangle 355.png',
    'title': 'Home Baking',
    'description':
        'Lorem ipsum dolor sit amet,  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum'
  },
  {
    'imagePath': 'imges/Rectangle 357.png',
    'title': 'Small Retail Bakeries',
    'description':
        'Lorem ipsum dolor sit amet,  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum'
  },
  {
    'imagePath': 'imges/Rectangle 359.png',
    'title': 'Chain Store Retail Bakeries',
    'description':
        'Lorem ipsum dolor sit amet,  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum'
  },
  {
    'imagePath': 'imges/Rectangle 161.png',
    'title': 'Wholesale Bakeries',
    'description':
        'Lorem ipsum dolor sit amet,  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum'
  },
  {
    'imagePath': 'imges/Rectangle 163.png',
    'title': 'Plant Baking',
    'description':
        'Lorem ipsum dolor sit amet,  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum'
  }
];

class CourseInformation extends StatefulWidget {
  const CourseInformation({super.key});

  @override
  State<CourseInformation> createState() => _CourseInformationState();
}

class _CourseInformationState extends State<CourseInformation> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          if (width <= 600) MobileNavBar(itemIndex: 2),
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 224, 119, 15).withOpacity(0.15),
                BlendMode.color),
            child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: width < 600 ? 0 : 250,
                          ),
                          ClipPath(
                            clipper: ClippingClass(),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: width < 600 ? height / 3 : height / 1.1,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("imges/flowersprinkle.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (width >= 600)
                        ScrollNavBar(
                          itemIndex: 2,
                        ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Text(
                              'Type of Bakery',
                              style: TextStyle(
                                fontSize: 32,
                                fontFamily: 'Monser',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Container(
                                width: 225,
                                height: 1.0,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Text(
                                'Description of Module:',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'Monser',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            if (width >= 600)
                              SizedBox(
                                height: 300,
                                width: 850,
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: 'Monser2',
                                      fontWeight: FontWeight.w100),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: MyUtility(context).width <= 600,
                    child: CourseInfo(
                        imagePath: 'imges/info.svg',
                        title: '',
                        description:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ialiquip ex ea Excepteur sint occaecat cupidatat non pro deserunt mollit anim id est laborum exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum'),
                  ),
                  Visibility(
                    visible: MyUtility(context).width <= 600,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Container(
                        width: 400,
                        height: 300,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 217, 217, 217),
                        ),
                        child: Center(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'imges/Polygon 13.svg',
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                    child: Text(
                      'What you will learn',
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Monser',
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 78, 47, 39)),
                    ),
                  ),
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CourseInfoButton(
                          imagePath: 'imges/Rectangle 355.png',
                          title: 'Home Baking',
                          description:
                              'Lorem ipsum dolor sit amet,  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum'),
                      CourseInfoButton(
                          imagePath: 'imges/Rectangle 357.png',
                          title: 'Small Retail Bakeries',
                          description:
                              'Lorem ipsum dolor sit amet,  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum'),
                      CourseInfoButton(
                          imagePath: 'imges/Rectangle 359.png',
                          title: 'Chain Store Retail Bakeries',
                          description:
                              'Lorem ipsum dolor sit amet,  nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum')
                    ],
                  ),*/
                  Visibility(
                      visible: MyUtility(context).width >= 600,
                      child: CourseInfoDesktopSlider(courselist: courselist)),
                  Visibility(
                      visible: MyUtility(context).width <= 600,
                      child: CourseInfoMobileSlider(courselist: courselist)),
                  Visibility(
                    visible: MyUtility(context).width >= 600,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CourseDot(),
                        CourseDot(),
                        CourseDot(),
                        CourseDot(),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              'Course Level:',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Visibility(
                            visible: MyUtility(context).width > 600,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Row(
                                children: [
                                  GradientButton(
                                      text: 'Beginner',
                                      startColor: const Color.fromARGB(
                                          255, 225, 145, 77),
                                      endColor: const Color.fromARGB(
                                          255, 225, 222, 89),
                                      duration: Duration(seconds: 1),
                                      onPressed: () {}),
                                  GradientButton(
                                      text: 'Advanced',
                                      startColor: const Color.fromARGB(
                                          255, 233, 107, 70),
                                      endColor: const Color.fromARGB(
                                          255, 233, 107, 70),
                                      duration: Duration(seconds: 1),
                                      onPressed: () {}),
                                  GradientButton(
                                      text: 'Expert',
                                      startColor: const Color.fromARGB(
                                          255, 233, 107, 70),
                                      endColor: const Color.fromARGB(
                                          255, 233, 107, 70),
                                      duration: Duration(seconds: 1),
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                          ),
                          Visibility(
                            visible: MyUtility(context).width < 600,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: GradientButton(
                                        text: 'Beginner',
                                        startColor: const Color.fromARGB(
                                            255, 225, 145, 77),
                                        endColor: const Color.fromARGB(
                                            255, 225, 222, 89),
                                        duration: Duration(seconds: 1),
                                        onPressed: () {}),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: GradientButton(
                                        text: 'Advanced',
                                        startColor: const Color.fromARGB(
                                            255, 233, 107, 70),
                                        endColor: const Color.fromARGB(
                                            255, 233, 107, 70),
                                        duration: Duration(seconds: 1),
                                        onPressed: () {}),
                                  ),
                                  GradientButton(
                                      text: 'Expert',
                                      startColor: const Color.fromARGB(
                                          255, 233, 107, 70),
                                      endColor: const Color.fromARGB(
                                          255, 233, 107, 70),
                                      duration: Duration(seconds: 1),
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              'Duration of Course:',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'imges/Group (3).svg',
                                  height: 50,
                                  width: 50,
                                ),
                                SizedBox(width: 20),
                                SvgPicture.asset(
                                  'imges/12 Hours.svg',
                                  height: 15,
                                  width: 15,
                                ),
                              ],
                            ),
                          ),
                          ColorButton(
                              text: 'Apply',
                              startColor: Colors.yellow,
                              endColor: Colors.orange,
                              onPressed: () {}),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),
                      Visibility(
                        visible: MyUtility(context).width >= 600,
                        child: Container(
                          width: MyUtility(context).width / 4,
                          height: 250,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 217, 217, 217),
                          ),
                          child: Center(
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  'imges/Polygon 13.svg',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          if (width >= 600) ContactInfo(),
          if (width <= 600) ContactInfoMobile()
        ],
      ),
    );
  }
}
