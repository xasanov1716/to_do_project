import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_project/ui/task/task_add/widget/expension_tile.dart';
import 'package:to_do_project/ui/task/task_add/widget/text_field.dart';

import '../../../utils/app_colors.dart';
class TaskAddScreen extends StatelessWidget {
  const TaskAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: AppColors.white),
        title: Row(
          children: [
            SizedBox(width: 5.w,),
            const Text('Create a task',style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.w700
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    SizedBox(width: 157.w,child: MyExpansionTile(title: 'Category'),),
                    SizedBox(width: 20.w,),
                    SizedBox(width: 157.w,child: MyTextField(hintText: 'Task Title'),),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
