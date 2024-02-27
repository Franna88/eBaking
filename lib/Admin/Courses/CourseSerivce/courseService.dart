import 'package:ebaking/Admin/Courses/courseDialog.dart';
import 'package:flutter/material.dart';

class CourseService { 
  BuildContext context;
  CourseService(this.context);
  
  BuildContext? _dialogContext;

//Open popup for courses add/Edit
  Future openCourseDialog() => showDialog(
      context: context,
      builder: (context) {
        _dialogContext = context;
        return Dialog(
            child: CourseDialog(
          closeDialog: () => Navigator.pop(_dialogContext!),
        ));
      });
}
