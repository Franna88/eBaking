import 'package:ebaking/AboutUs/AboutUsButton.dart';
import 'package:ebaking/components/Footer/ContactInfo.dart';
import 'package:ebaking/components/Footer/ContactInfroMobile.dart';
import 'package:ebaking/components/CustomShapePath/TriangleDownShape.dart';
import 'package:ebaking/components/MyUtil.dart';
import 'package:ebaking/components/NavBar.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          if (width <= 600) MobileNavBar(itemIndex: 1,),
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 224, 119, 15).withOpacity(0.15),
                BlendMode.color),
            child: Container(
              child: Column(
                children: [
                  Stack(
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
                              fit: BoxFit.fill,
                              image: AssetImage("imges/about_us.png"),
                            ),
                          ),
                        ),
                      ),
                      if (width >= 600)
                        ScrollNavBar(
                          itemIndex: 1,
                        ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: MyUtility(context).width < 600
                                  ? MyUtility(context).height / 9
                                  : MyUtility(context).height / 7,
                            ),
                            Text(
                              'About Us',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Monser',
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 50),
                              child: Container(
                                width: 175,
                                height: 1.5,
                                color: Colors.white,
                              ),
                            ),
                            if (width >= 600)
                              SizedBox(
                                height: 200,
                                width: 900,
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Monser2',
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
                  if (width >= 600)
                    Text(
                      'About Us',
                      style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'Monser',
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 78, 47, 39)),
                    ),
                  if (width >= 600)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                        width: 150,
                        height: 1,
                        color: Colors.black,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (width >= 600)
                          AboutUsButton(
                              imagePath: 'imges/Group (1).svg',
                              title: 'How does it work',
                              description:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ialiquip ex ea Excepteur sint occaecat cupidatat non pro deserunt mollit anim id est laborum',
                              buttonText: 'Read More',
                              onPressed: () {}),
                        if (width >= 600)
                          AboutUsButton(
                              imagePath: 'imges/Group.svg',
                              title: 'What to Expect',
                              description:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ialiquip ex ea Excepteur sint occaecat cupidatat non pro deserunt mollit anim id est laborum',
                              buttonText: 'Read More',
                              onPressed: () {}),
                        if (width >= 600)
                          AboutUsButton(
                              imagePath: 'imges/Group.svg',
                              title: 'What is E Baking',
                              description:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ialiquip ex ea Excepteur sint occaecat cupidatat non pro deserunt mollit anim id est laborum',
                              buttonText: 'Read More',
                              onPressed: () {}),
                      ],
                    ),
                  ),
                  if (width <= 600)
                    CourseInfo(
                        imagePath: 'imges/info.svg',
                        title: '',
                        description:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ialiquip ex ea Excepteur sint occaecat cupidatat non pro deserunt mollit anim id est laborum exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum')
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
