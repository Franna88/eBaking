import 'package:ebaking/components/MyUtil.dart';
import 'package:flutter/material.dart';

var studentData = [
{"student" :"Student Student", "email":"student1@gmail.com", "coursesCompleted":"12"},
{"student" :"Student Student", "email":"student2@gmail.com", "coursesCompleted":"4"},
{"student" :"Student Student", "email":"student3@gmail.com", "coursesCompleted":"2"},
{"student" :"Student Student", "email":"student4@gmail.com", "coursesCompleted":"1"},
{"student" :"Student Student", "email":"student5@gmail.com", "coursesCompleted":"7"},

];

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      for(var i = 0; i <studentData.length; i++ )
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container( width: MyUtility(context).width,
            height:75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("imges/studentBackground.png"),
                  fit: BoxFit.cover),
            ),
            child:  Row(
              children: [
                SizedBox(
                  width: MyUtility(context).width / 4,
                  child: Text(
                   studentData[i]['student']!,
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: MyUtility(context).width / 4,
                  child: Text(
                    studentData[i]['email']!,
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: MyUtility(context).width / 8,
                  child: Text(
                    studentData[i]['coursesCompleted']!,
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: MyUtility(context).width / 13,
                  child: Container(
                      width: 60,
                      height: 45,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 115, 0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Center(
                        child: Text(
                          "View",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
                const SizedBox(width: 15,),
              ],
            ),
            ),
      )
    ],);
  }
}