import 'package:ebaking/AboutUS.dart';
import 'package:ebaking/ApplyNow.dart';
import 'package:ebaking/CareerPath.dart';
import 'package:ebaking/ContactUs.dart';
import 'package:ebaking/landingPage.dart';
import 'package:flutter/material.dart';

import 'MyUtil.dart';

class ContainerStyle extends StatefulWidget {
  int itemIndex;
  int routeValue;
  String? description;
  Widget route;
  ContainerStyle(
      {super.key,
      required this.itemIndex,
      required this.routeValue,
      required this.description,
      required this.route});

  @override
  State<ContainerStyle> createState() => _ContainerStyleState();
}

class _ContainerStyleState extends State<ContainerStyle> {
  @override
  Widget build(BuildContext context) {
    Color textColor = Color.fromARGB(255, 255, 136, 40);
    Color containerColor = Colors.white;

    if (widget.itemIndex == widget.routeValue) {
      setState(() {
        textColor = Colors.white;
        containerColor = Color.fromARGB(255, 255, 136, 40);
      });
    } else {
      setState(() {
        textColor = Color.fromARGB(255, 255, 136, 40);
        containerColor = Colors.white;
      });
    }

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Material(
                      child: widget.route,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: textColor,
              width: 2,
            ),
            color: containerColor),
        width: 165,
        height: 40,
        child: Center(
            child: Text(
          widget.description!,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
            fontFamily: 'Monser',
          ),
        )),
      ),
    );
  }
}

class ScrollNavBar extends StatefulWidget {
  int itemIndex;
  ScrollNavBar({super.key, required this.itemIndex});

  @override
  State<ScrollNavBar> createState() => _ScrollNavBarState();
}

class _ScrollNavBarState extends State<ScrollNavBar> {
  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;

//Navigate to difrent pages
  changePage() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.transparent,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: -MyUtility(context).height / 25,
                left: 20,
                child: Image.asset(
                  'imges/Logo.png',
                  height: MyUtility(context).height / 10,
                  width: MyUtility(context).width / 14,
                  fit: BoxFit.fill,
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
                        child: ContainerStyle(
                          description: "Home",
                          itemIndex: widget.itemIndex,
                          routeValue: 0,
                          route: LandingPage(),
                        )),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: ContainerStyle(
                          description: "About",
                          itemIndex: widget.itemIndex,
                          routeValue: 1,
                          route: AboutUs(),
                        )),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: ContainerStyle(
                          description: "View Courses",
                          itemIndex: widget.itemIndex,
                          routeValue: 2,
                          route: CareerPath(),
                        )),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: ContainerStyle(
                          description: "Contact Us",
                          itemIndex: widget.itemIndex,
                          routeValue: 3,
                          route: ContactUs(),
                        )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Material(child: ApplyNow())));
                        },
                        child: Container(
                          width: 150,
                          height: 65,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("imges/applyBtn.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Apply',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Monser',
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
                      child: Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("imges/signInBtn.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Monser',
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MobileNavBar extends StatelessWidget {
  int itemIndex;
  MobileNavBar({super.key, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;

    BuildContext? _dialogContext;
    //Open mobile navbar dialog
    Future openMobileNavbarPopup() => showDialog(
        context: context,
        builder: (context) {
          _dialogContext = context;
          return Dialog(
              child: MobileNavbarPopup(
                  itemIndex: itemIndex,
                  closeDialog: () => Navigator.pop(_dialogContext!)));
        });

    return Column(
      children: [
        Container(
          height: 50,
          width: widthDevice,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'imges/Logo.png',
                height: 50,
                width: 50,
                fit: BoxFit.fill,
              ),
              GestureDetector(
                onTap: () {
                  openMobileNavbarPopup();
                },
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset('imges/icons8-menu-100.png'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MobileNavbarPopup extends StatefulWidget {
  int itemIndex;

  Function closeDialog;
  MobileNavbarPopup(
      {super.key, required this.closeDialog, required this.itemIndex});

  @override
  State<MobileNavbarPopup> createState() => _MobileNavbarPopupState();
}

class _MobileNavbarPopupState extends State<MobileNavbarPopup> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      width: widthDevice,
      height: heightDevice,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MyUtility(context).width / 4,
            height: MyUtility(context).height / 6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("imges/Logo.png"), fit: BoxFit.cover),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 4, 0),
              child: ContainerStyle(
                description: "Home",
                itemIndex: widget.itemIndex,
                routeValue: 0,
                route: LandingPage(),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
              child: ContainerStyle(
                description: "About",
                itemIndex: widget.itemIndex,
                routeValue: 1,
                route: AboutUs(),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
              child: ContainerStyle(
                description: "View Courses",
                itemIndex: widget.itemIndex,
                routeValue: 2,
                route: CareerPath(),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
              child: ContainerStyle(
                description: "Contact Us",
                itemIndex: widget.itemIndex,
                routeValue: 3,
                route: ContactUs(),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Material(child: ApplyNow())));
              },
              child: Container(
                width: 150,
                height: 65,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("imges/applyBtn.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Apply',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Monser',
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
            child: Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("imges/signInBtn.png"),
                  fit: BoxFit.contain,
                ),
              ),
              child: Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 20, fontFamily: 'Monser', color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
