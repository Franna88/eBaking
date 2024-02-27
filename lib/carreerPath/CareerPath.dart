import 'package:ebaking/CarreerPath/courseInfo/CourseInformation.dart';
import 'package:ebaking/AboutUs/AboutUsButton.dart';
import 'package:ebaking/CarreerPath/CareerpathButton.dart';
import 'package:ebaking/CarreerPath/CareerPathMobileSlider.dart';
import 'package:ebaking/components/Footer/ContactInfo.dart';
import 'package:ebaking/components/Footer/ContactInfroMobile.dart';
import 'package:ebaking/components/CustomShapePath/TriangleDownShape.dart';
import 'package:ebaking/components/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/MyUtil.dart';

final List courselist = [
  {
    'imageUrl': 'imges/bread.jpg',
    'text': 'History of Baking',
    'onPressed': () {} // or 'onPressed': null
  },
  {
    'imageUrl': 'imges/Baker.jpg',
    'text': 'The SA baking Industry',
    'onPressed': () {} // or 'onPressed': null
  },
  {
    'imageUrl': 'imges/flowersprinkle.jpg',
    'text': 'Types of Bakery',
    'onPressed': () {} // or 'onPressed': null
  },
  {
    'imageUrl': 'imges/nuts.jpg',
    'text': 'New Concepts',
    'onPressed': () {} // or 'onPressed': null
  },
  {
    'imageUrl': 'imges/windowbread.jpg',
    'text': 'SA Bakers Association',
    'onPressed': () {} // or 'onPressed': null
  }
];

class CareerPath extends StatefulWidget {
  const CareerPath({super.key});

  @override
  State<CareerPath> createState() => _CareerPathState();
}

class _CareerPathState extends State<CareerPath> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    BuildContext? dialogContext;

    return SingleChildScrollView(
      child: Column(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 224, 119, 15).withOpacity(0.15),
                BlendMode.color),
            child: Container(
              child: Column(
                children: [
                  if (width <= 600) MobileNavBar(itemIndex: 2),
                  Stack(
                    children: [
                      ClipPath(
                        clipper: ClippingClass(),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: width < 600 ? height / 3 : height / 1.1,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("imges/CareerPathMain.jpg"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: width < 600 ? 0 : 85,
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
                            const SizedBox(
                              height: 50,
                            ),
                            const Text(
                              'Your Career starts here',
                              style: TextStyle(
                                fontSize: 32,
                                fontFamily: 'Monser',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              width: 320,
                              height: 1.5,
                              color: Colors.white,
                            ),
                            const Text(
                              'Our Courses',
                              style: TextStyle(
                                fontSize: 32,
                                fontFamily: 'Monser',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 25),
                              child: Container(
                                width: 165,
                                height: 1.5,
                                color: Colors.white,
                              ),
                            ),
                            if (width >= 600)
                              const SizedBox(
                                height: 300,
                                width: 900,
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: 'Monser2',
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Visibility(
                      visible: MyUtility(context).width < 600,
                      child: const CourseInfo(
                          imagePath: 'imges/info.svg',
                          title: '',
                          description:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ialiquip ex ea Excepteur sint occaecat cupidatat non pro deserunt mollit anim id est laborum exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum')),
                  if (MyUtility(context).width >= 600)
                    const Text(
                      'Learning with E - Baking',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Monser',
                          color: Color.fromARGB(255, 78, 47, 39)),
                    ),
                  if (MyUtility(context).width >= 600)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 1,
                        color: const Color.fromARGB(255, 78, 47, 39),
                      ),
                    ),
                  if (MyUtility(context).width >= 600)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          const Text(
                            'The Baking Industry: Part1',
                            style: TextStyle(
                                fontSize: 26,
                                fontFamily: 'Monser',
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 78, 47, 39)),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 340,
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusColor: const Color(0xFF9E9E9E),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                        "imges/magnifyingClass.svg",
                                        width: 35,
                                        height: 35),
                                  ),
                                  hintText: "Search here...",
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 340,
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusColor: const Color(0xFF9E9E9E),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SvgPicture.asset(
                                        "imges/category.svg",
                                        width: 35,
                                        height: 35),
                                  ),
                                  hintText: "Categories",
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          /*  Container(
                            width: MyUtility(context).width / 4.5,
                            height: MyUtility(context).height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.search,
                                size: 25,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            width: MyUtility(context).width / 4.5,
                            height: MyUtility(context).height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.menu,
                                size: 25,
                                color: Colors.black,
                              ),
                            ),
                          ),
                      */
                        ],
                      ),
                    ),
                  if (MyUtility(context).width <= 600)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Learning with \nE - Baking',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 78, 47, 39)),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 1,
                              color: Colors.black,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 25),
                            child: Text(
                              'The Baking Industry: Part1',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 78, 47, 39)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: MyUtility(context).width / 2.5,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusColor: const Color(0xFF9E9E9E),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.search,
                                          size: 25,
                                          color: Colors.black,
                                        ),
                                        // SvgPicture.asset(
                                        //     "imges/magnifyingClass.svg",
                                        //     width: 30,
                                        //     height: 35),
                                      ),
                                      hintText: "Search here...",
                                      hintStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: MyUtility(context).width / 2.5,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusColor: const Color(0xFF9E9E9E),
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                            "imges/category.svg",
                                            width: 35,
                                            height: 35),
                                      ),
                                      hintText: "Categories",
                                      hintStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              /*Container(
                                width: MyUtility(context).width / 2.5,
                                height: MyUtility(context).height * 0.07,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.search,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                width: MyUtility(context).width / 2.5,
                                height: MyUtility(context).height * 0.07,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      offset: Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.menu,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                           */
                            ],
                          ),
                        ],
                      ),
                    ),
                  if (MyUtility(context).width >= 600)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CareerButton(
                                  text: 'History of Baking',
                                  imageUrl: 'imges/bread.jpg',
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Material(
                                                    child:
                                                        CourseInformation())));
                                  }),
                              SizedBox(
                                height: MyUtility(context).height / 13,
                              ),
                              CareerButton(
                                  text: 'The SA baking Industry',
                                  imageUrl: 'imges/Baker.jpg',
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Material(
                                                    child:
                                                        CourseInformation())));
                                  }),
                            ],
                          ),
                          Column(
                            children: [
                              CareerButton(
                                  text: 'Types of Bakery',
                                  imageUrl: 'imges/flowersprinkle.jpg',
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Material(
                                                    child:
                                                        CourseInformation())));
                                  }),
                              SizedBox(
                                height: MyUtility(context).height / 13,
                              ),
                              CareerButton(
                                  text: 'New Concepts',
                                  imageUrl: 'imges/nuts.jpg',
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Material(
                                                    child:
                                                        CourseInformation())));
                                  }),
                            ],
                          ),
                          Column(
                            children: [
                              CareerButton(
                                  text: 'SA Bakers Association',
                                  imageUrl: 'imges/windowbread.jpg',
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Material(
                                                    child:
                                                        CourseInformation())));
                                  }),
                              SizedBox(
                                height: MyUtility(context).height / 13,
                              ),
                              SizedBox(
                                width: MyUtility(context).width / 3.5,
                                height: MyUtility(context).height / 3.0,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  Visibility(
                    visible: MyUtility(context).width <= 600,
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: CareerPathMobileSlider(courselist: courselist)),
                  ),
                ],
              ),
            ),
          ),
          if (width >= 600) const ContactInfo(),
          if (width <= 600) const ContactInfoMobile()
        ],
      ),
    );
  }
}
