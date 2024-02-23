import 'package:ebaking/Admin/Courses/courses.dart';
import 'package:ebaking/Admin/NavigationPage/ui/navbarTextStyle.dart';
import 'package:ebaking/Admin/Profile/profile.dart';
import 'package:ebaking/Admin/Quiz/quiz.dart';
import 'package:ebaking/Admin/Students/students.dart';
import 'package:ebaking/components/MyUtil.dart';
import 'package:flutter/material.dart';

class NavigationPAge extends StatefulWidget {
  const NavigationPAge({super.key});

  @override
  State<NavigationPAge> createState() => _NavigationPAgeState();
}

class _NavigationPAgeState extends State<NavigationPAge> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    var pages = [Courses(), Students(), Quiz(), Profile()];

    changePage(index) {
      setState(() {
        pageIndex = index;
      });
    }

    return Container(
      width: MyUtility(context).width,
      height: MyUtility(context).height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("imges/background.png"), fit: BoxFit.cover),
      ),
      child: Row(
        children: [
          Container(
            width: MyUtility(context).width / 5,
            height: MyUtility(context).height,
            color: Colors.white,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("imges/Logo.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      changePage(0);
                    },
                    child: NavbarTextStyle(
                      itemName: "Courses",
                      svgPath: "imges/books.svg",
                      itemIndex: 0,
                      pageIndex: pageIndex,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      changePage(1);
                    },
                    child: NavbarTextStyle(
                      itemName: "Students",
                      svgPath: "imges/student.svg",
                      itemIndex: 1,
                      pageIndex: pageIndex,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      changePage(2);
                    },
                    child: NavbarTextStyle(
                      itemName: "Quiz Setup",
                      svgPath: "imges/quiz.svg",
                      itemIndex: 2,
                      pageIndex: pageIndex,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      changePage(3);
                    },
                    child: NavbarTextStyle(
                      itemName: "My Profile",
                      svgPath: "imges/profile.svg",
                      itemIndex: 3,
                      pageIndex: pageIndex,
                    ),
                  ),
                  NavbarTextStyle(
                    itemName: "Logout",
                    svgPath: "imges/books.svg",
                    itemIndex: 4,
                    pageIndex: pageIndex,
                  ),
                ]),
          ),
          Container(
              width: MyUtility(context).width - MyUtility(context).width / 5,
              height: MyUtility(context).height,
              child: Center(
                child: pages[pageIndex],
              ))
        ],
      ),
    );
  }
}
