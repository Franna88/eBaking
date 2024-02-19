import 'package:ebaking/components/Buttons/CareerpathButton.dart';
import 'package:ebaking/components/ContactInfo.dart';
import 'package:ebaking/components/ContactInfroMobile.dart';
import 'package:ebaking/components/CustomShapePath/TriangleDownShape.dart';
import 'package:ebaking/components/NavBar.dart';
import 'package:flutter/material.dart';

import 'components/MyUtil.dart';

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
                  if (width >= 600) ScrollNavBar(),
                  if (width <= 600) MobileNavBar(),
                  Stack(
                    children: [
                      ClipPath(
                        clipper: ClippingClass(),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: width < 600 ? height / 3 : height / 1.1,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("imges/CareerPathMain.jpg"),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              'Your Career starts here',
                              style: TextStyle(
                                fontSize: 32,
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
                            Text(
                              'Our Courses',
                              style: TextStyle(
                                fontSize: 32,
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
                              SizedBox(
                                height: 300,
                                width: 900,
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (MyUtility(context).width >= 600)
                    Text(
                      'Learning with E - Baking',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 78, 47, 39)),
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'The Baking Industry: Part1',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 78, 47, 39)),
                          ),
                          SizedBox(
                            width: MyUtility(context).width / 8,
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
                        ],
                      ),
                    ),
                  if (MyUtility(context).width <= 600)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Learning with \nE - Baking',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 78, 47, 39)),
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
                          Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: Text(
                              'The Baking Industry: Part1',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromARGB(255, 78, 47, 39)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
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
                                  onPressed: () {}),
                              SizedBox(
                                height: MyUtility(context).height / 13,
                              ),
                              CareerButton(
                                  text: 'The SA baking Industry',
                                  imageUrl: 'imges/Baker.jpg',
                                  onPressed: () {}),
                            ],
                          ),
                          Column(
                            children: [
                              CareerButton(
                                  text: 'Types of Bakery',
                                  imageUrl: 'imges/flowersprinkle.jpg',
                                  onPressed: () {}),
                              SizedBox(
                                height: MyUtility(context).height / 13,
                              ),
                              CareerButton(
                                  text: 'New Concepts',
                                  imageUrl: 'imges/nuts.jpg',
                                  onPressed: () {}),
                            ],
                          ),
                          Column(
                            children: [
                              CareerButton(
                                  text: 'SA Bakers Association',
                                  imageUrl: 'imges/windowbread.jpg',
                                  onPressed: () {}),
                              SizedBox(
                                height: MyUtility(context).height / 13,
                              ),
                              Container(
                                width: MyUtility(context).width / 3.5,
                                height: MyUtility(context).height / 3.0,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  if (MyUtility(context).width <= 600)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: CareerButton(
                          text: 'History of Baking',
                          imageUrl: 'imges/bread.jpg',
                          onPressed: () {}),
                    ),
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
