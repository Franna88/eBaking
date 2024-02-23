import 'package:ebaking/components/MyUtil.dart';
import 'package:flutter/material.dart';

var quizData = [
  {"quizTitle": "Baking Industry Type of Bakery"},
];

class QuizList extends StatefulWidget {
  const QuizList({super.key});

  @override
  State<QuizList> createState() => _QuizListState();
}

class _QuizListState extends State<QuizList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: MyUtility(context).width / 4,
              child: Text(
                "Quizes",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
        for (var i = 0; i < quizData.length; i++)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MyUtility(context).width,
              height: 75,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("imges/studentBackground.png"),
                    fit: BoxFit.cover),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: MyUtility(context).width / 4,
                    child: Text(
                      quizData[i]['quizTitle']!,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: MyUtility(context).width / 13,
                    child: Container(
                        width: 60,
                        height: 45,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 115, 0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text(
                            "View",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}
