import 'package:ebaking/Admin/AdminComponents/courseContainerStyle.dart';
import 'package:ebaking/Admin/Courses/CourseSerivce/courseService.dart';
import 'package:ebaking/components/MyUtil.dart';

import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Spacer(),
              GestureDetector(
                onTap: () {
                  CourseService(context).openCourseDialog();
                },
                child: Container(
                    width: 180,
                    height: 60,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 115, 0),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "Add New Course +",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ],
          ),
          Text(
            'Learning with E - The Baking Industry',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: "RegularMontserratBold",
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              width: 550,
              height: 1.0,
              color: Colors.white,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 223, 196),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            width: MyUtility(context).width,
            height: MyUtility(context).height / 1.5,
            child: Wrap(
              children: [
                CourseContainerStyle(
                  description: "History of Baking",
                  imageUrl: "imges/bread.png",
                  onPressed: () {},
                ),
                CourseContainerStyle(
                  description: "The SA Baking Industry",
                  imageUrl: "imges/bakingIndustry.png",
                  onPressed: () {},
                ),
                CourseContainerStyle(
                  description: "Types of Bakery",
                  imageUrl: "imges/typesOF.png",
                  onPressed: () {},
                ),
                CourseContainerStyle(
                  description: "New Concepts",
                  imageUrl: "imges/newConcepts.png",
                  onPressed: () {},
                ),
                CourseContainerStyle(
                  description: "SA Bakers Association",
                  imageUrl: "imges/bakkersAss.png",
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
