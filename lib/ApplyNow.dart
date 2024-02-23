import 'package:ebaking/components/Buttons/AboutUsButton.dart';
import 'package:ebaking/components/ContactInfo.dart';
import 'package:ebaking/components/ContactInfroMobile.dart';
import 'package:ebaking/components/CustomShapePath/TriangleDownShape.dart';
import 'package:ebaking/components/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/MyUtil.dart';

class ApplyNow extends StatefulWidget {
  const ApplyNow({super.key});

  @override
  State<ApplyNow> createState() => _ApplyNowState();
}

class _ApplyNowState extends State<ApplyNow> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          if (width <= 600) MobileNavBar(),
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
                            height: width < 600 ? 0 : 50,
                          ),
                          ClipPath(
                            clipper: ClippingClass(),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: width < 600 ? height / 3 : height / 1.1,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("imges/E-baking.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (width >= 600) ScrollNavBar(),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Text(
                              'Apply Now',
                              style: TextStyle(
                                fontSize: 32,
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
                                'Requirements',
                                style: TextStyle(
                                  fontSize: 18,
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
                                width:
                                    50, // Adjust the width and height of the SVG image
                                height: 50,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
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
