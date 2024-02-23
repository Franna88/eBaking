import 'package:flutter/material.dart';

class NavigationServices {
  static dynamic changePage(index, pageIndex) {
    print("test");
    print(pageIndex);
    print(index);

    pageIndex == index;
  }

  static void foo() {
    print("1234");
  }
}

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  changePage(index, pageIndex) {
    print("test");
    print(pageIndex);
    print(index);

    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
