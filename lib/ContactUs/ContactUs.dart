import 'package:ebaking/ContactUs/ContactUsButton.dart';
import 'package:ebaking/components/Footer/ContactInfo.dart';
import 'package:ebaking/components/Footer/ContactInfroMobile.dart';
import 'package:ebaking/components/CustomShapePath/TriangleDownShape.dart';
import 'package:ebaking/components/MyTextField.dart';
import 'package:ebaking/components/MyUtil.dart';
import 'package:ebaking/components/NavBar.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  //Text edit controller
  final TextEditingController dummyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          if (width <= 600) MobileNavBar(itemIndex: 3),
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
                            height: width < 600 ? 0 : 75,
                          ),
                          ClipPath(
                            clipper: ClippingClass(),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: width < 600 ? height / 3 : height / 1.75,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("imges/Rectangle 195.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (width >= 600)
                        ScrollNavBar(
                          itemIndex: 3,
                        ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: MyUtility(context).width < 600
                                  ? MyUtility(context).width / 5
                                  : MyUtility(context).height / 5,
                            ),
                            const Text(
                              'Contact Us',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Monser2',
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Text(
                                'We would love to hear from you',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Monser2',
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MyUtility(context).height / 12,
                  ),
                  //desktop ContactUs Buttons
                  Visibility(
                    visible: MyUtility(context).width > 600,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ContactsUsButton(
                            imagePath: 'imges/mail.svg',
                            email: 'ebaking@gmail.com',
                            label: 'Email'),
                        SizedBox(
                          width: MyUtility(context).width * 0.02,
                        ),
                        const ContactsUsButton(
                            imagePath: 'imges/Phone.svg',
                            email: '+27 71 958 85 74',
                            label: 'Phone'),
                        SizedBox(
                          width: MyUtility(context).width * 0.02,
                        ),
                        const ContactsUsButton(
                            imagePath: 'imges/Whatsapp.svg',
                            email: '+27 71 958 85 74',
                            label: 'Whatsapp')
                      ],
                    ),
                  ),
                  Visibility(
                    visible: MyUtility(context).width > 600,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                      child: SizedBox(
                        width: MyUtility(context).width / 1.29,
                        child: const Text(
                          'Get in Touch',
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Monser',
                              color: Color.fromARGB(255, 78, 47, 39)),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  //desktop field Text
                  Visibility(
                    visible: MyUtility(context).width > 600,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyTextField(
                            description: 'Contact name ',
                            hintText: 'name*',
                            controller: dummyController),
                        MyTextField(
                            description: 'Surname',
                            hintText: 'name*',
                            controller: dummyController),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: MyUtility(context).width < 600,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Get in Touch',
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 78, 47, 39)),
                          textAlign: TextAlign.left,
                        ),
                        //mobile field text
                        MyTextField(
                            description: 'name ',
                            hintText: 'name*',
                            customSize: MyUtility(context).width / 1.27,
                            controller: dummyController),
                        MyTextField(
                            description: 'Surname',
                            hintText: 'name*',
                            customSize: MyUtility(context).width / 1.27,
                            controller: dummyController),
                        MyTextField(
                            description: 'test',
                            hintText: 'name*',
                            customSize: MyUtility(context).width / 1.27,
                            controller: dummyController),
                        MyTextField(
                            description: 'test',
                            hintText: 'name*',
                            customSize: MyUtility(context).width / 1.27,
                            controller: dummyController),
                        MyTextField(
                            description: 'message',
                            hintText: 'message',
                            lines: 5,
                            customSize: MyUtility(context).width / 1.27,
                            controller: dummyController),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                          child: SizedBox(
                            width: 150,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                foregroundColor: Colors.white,
                              ),
                              child: const Text(
                                'Submit',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Monser',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Visibility(
                    visible: MyUtility(context).width > 600,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Desktop field text
                        MyTextField(
                            description: 'test',
                            hintText: 'name*',
                            controller: dummyController),
                        MyTextField(
                            description: 'test',
                            hintText: 'name*',
                            controller: dummyController),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: MyUtility(context).width > 600,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyTextField(
                            description: 'message',
                            hintText: 'message',
                            lines: 5,
                            customSize: MyUtility(context).width / 1.27,
                            controller: dummyController),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: MyUtility(context).width > 600,
                    child: Row(
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
                              child: const Text(
                                'Submit',
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
                  ),
                  Visibility(
                    visible: MyUtility(context).width < 600,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const ContactsUsButton(
                            imagePath: 'imges/mail.svg',
                            email: 'ebaking@gmail.com',
                            label: 'Email'),
                        SizedBox(
                          width: MyUtility(context).width * 0.02,
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                          child: ContactsUsButton(
                              imagePath: 'imges/Phone.svg',
                              email: '+27 71 958 85 74',
                              label: 'Phone'),
                        ),
                        SizedBox(
                          width: MyUtility(context).width * 0.02,
                        ),
                        const ContactsUsButton(
                            imagePath: 'imges/Whatsapp.svg',
                            email: '+27 71 958 85 74',
                            label: 'Whatsapp'),
                        SizedBox(
                          height: MyUtility(context).height / 10,
                        )
                      ],
                    ),
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
