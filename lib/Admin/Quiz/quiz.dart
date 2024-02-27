
import 'package:ebaking/Admin/Quiz/quizList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
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
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 340,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: const Color(0xFF9E9E9E),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("imges/magnifyingClass.svg",
                            width: 35, height: 35),
                      ),
                      hintText: "Search here...",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 340,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusColor: const Color(0xFF9E9E9E),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("imges/category.svg",
                            width: 35, height: 35),
                      ),
                      hintText: "Categories",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  width: 200,
                  height: 60,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 115, 0),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      "Add New Question +",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
            
       const QuizList()
        ],
      ),
    );
  }
}
