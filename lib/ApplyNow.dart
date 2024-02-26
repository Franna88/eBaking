import 'package:ebaking/AboutUs/AboutUsButton.dart';
import 'package:ebaking/components/Footer/ContactInfo.dart';
import 'package:ebaking/components/Footer/ContactInfroMobile.dart';
import 'package:ebaking/components/CustomShapePath/TriangleDownShape.dart';
import 'package:ebaking/components/MyTextField.dart';
import 'package:ebaking/components/NavBar.dart';
import 'package:ebaking/components/ProgressBarStage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/MyUtil.dart';

class ApplyNow extends StatefulWidget {
  const ApplyNow({super.key});

  @override
  State<ApplyNow> createState() => _ApplyNowState();
}

class _ApplyNowState extends State<ApplyNow> {
  //Text edit controller
  final TextEditingController dummyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          if (width <= 600) MobileNavBar(itemIndex: 4),
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
                      if (width >= 600)
                        ScrollNavBar(
                          itemIndex: 4,
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
                              'Apply Now',
                              style: TextStyle(
                                fontFamily: 'Monser',
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
                                  fontFamily: "Monser2",
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
                                  '17 years or older\nMust be in grade 12 or has finished school\nAn application form must be completed (Request Application Form)\nA main course recipe with a photo attached\nA short CV with a motivational letter attached',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: 'Monser',
                                      fontWeight: FontWeight.w100),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MyUtility(context).height / 15,
                  ),
                  Visibility(
                    visible: MyUtility(context).width <= 600,
                    child: CourseInfo(
                        imagePath: 'imges/info.svg',
                        title: '',
                        description:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ialiquip ex ea Excepteur sint occaecat cupidatat non pro deserunt mollit anim id est laborum exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eeserunt mollit anim id est laborum'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ProgressBarStage(
                              imagePath: 'imges/normalCircle.png', number: 1),
                          Text(
                            "Course\nDetails",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 78, 47, 39),
                              fontFamily: 'Monser2',
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 2,
                        width: MyUtility(context).width / 6,
                        color: Color.fromARGB(255, 78, 47, 39),
                      ),
                      Column(
                        children: [
                          ProgressBarStage(
                              imagePath: 'imges/circleGradient.png', number: 2),
                          Text(
                            "Course\nDetails",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 78, 47, 39),
                              fontFamily: 'Monser2',
                            ),
                          ),

                          //  Text('Applicant\nDetails')
                        ],
                      ),
                      Container(
                        height: 2,
                        width: MyUtility(context).width / 6,
                        color: Color.fromARGB(255, 78, 47, 39),
                      ),
                      Column(
                        children: [
                          ProgressBarStage(
                              imagePath: 'imges/normalCircle.png', number: 3),
                          Text(
                            "Account\nHolder",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 78, 47, 39),
                              fontFamily: 'Monser2',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  //Desktop Text Field
                  Visibility(
                    visible: MyUtility(context).width >= 600,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MyTextField(
                                description: 'Name',
                                hintText: 'Name*',
                                controller: dummyController),
                            MyTextField(
                                description: 'Surname',
                                hintText: 'Surname*',
                                controller: dummyController),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MyTextField(
                                description: 'Phone',
                                hintText: 'Number*',
                                controller: dummyController),
                            MyTextField(
                                description: 'Email',
                                hintText: 'Email*',
                                controller: dummyController),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MyTextField(
                                description: 'DOB',
                                hintText: 'DD/MM/YYYY*',
                                controller: dummyController),
                            MyTextField(
                                description: 'ID',
                                hintText: 'Number*',
                                controller: dummyController),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 24, 24, 24),
                              child: SizedBox(
                                width: 150,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    foregroundColor: Colors.white,
                                  ),
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: 'Monser',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MyUtility(context).width / 10,
                            )
                          ],
                        ),
                        SizedBox(
                          height: MyUtility(context).height / 10,
                        )
                      ],
                    ),
                  ),
                  Visibility(
                    visible: MyUtility(context).width <= 600,
                    child: Column(
                      children: [
                        MyTextField(
                            description: 'Name',
                            hintText: 'Name*',
                            customSize: MyUtility(context).width / 1.27,
                            controller: dummyController),
                        MyTextField(
                            description: 'Surname',
                            hintText: 'Surname*',
                            customSize: MyUtility(context).width / 1.27,
                            controller: dummyController),
                        MyTextField(
                            description: 'Phone',
                            hintText: 'Number*',
                            customSize: MyUtility(context).width / 1.27,
                            controller: dummyController),
                        MyTextField(
                            description: 'Email',
                            hintText: 'Email*',
                            customSize: MyUtility(context).width / 1.27,
                            controller: dummyController),
                        MyTextField(
                            description: 'DOB',
                            hintText: 'DD/MM/YYYY*',
                            customSize: MyUtility(context).width / 1.27,
                            controller: dummyController),
                        MyTextField(
                            description: 'ID',
                            hintText: 'Number*',
                            customSize: MyUtility(context).width / 1.27,
                            controller: dummyController),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 24, 24, 24),
                          child: SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                foregroundColor: Colors.white,
                              ),
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Monser',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MyUtility(context).width / 10,
                        ),
                        SizedBox(
                          height: MyUtility(context).height / 15,
                        )
                      ],
                    ),
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
