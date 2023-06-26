import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_project/ui/task/task_add/task_add_screen.dart';
import 'package:to_do_project/ui/task/widget/behind_schedule_list_view.dart';
import 'package:to_do_project/ui/task/widget/containers.dart';
import 'package:to_do_project/ui/task/widget/upcoming_list_view.dart';
import 'package:to_do_project/utils/app_images.dart';

import '../../utils/app_colors.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  late TextEditingController textEditingController;
  int active = 0;
  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: AppColors.white),
        title: SizedBox(
          width: 77.w,
          child: Row(
            children: [
              Image.asset(AppImages.done,height: 23,width: 23,),
              SizedBox(width: 5.w,),
              const Text('ToDo',style: TextStyle(
                color: AppColors.C_2563EB,
                fontWeight: FontWeight.w700
                ),
              ),
            ],
          ),
        ),
        actions: [
          SizedBox(
            child: Container(
              margin: EdgeInsets.only(right: 20.w),
              width: 211.w,
              child: SizedBox(
                height: 40.h,
                child: TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.white,
                    contentPadding: const EdgeInsets.all(10),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(AppImages.search),),
                    hintText: 'Search for Tasks, date,',
                    hintStyle: TextStyle(
                      color: const Color(0xFF202D41).withOpacity(0.5),
                      fontSize: 12.sp,
                      fontFamily: 'GalanoGrotesque-Medium',
                    ),
                    suffixIcon: IconButton(
                      onPressed: (){setState(() {
                        textEditingController.clear();
                      });},
                      icon: SvgPicture.asset(AppImages.cancel,),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: AppColors.C_202D41.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 40.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 111.w,
                  child: TextButton(
                    onPressed: (){setState(() {
                      active=0;
                    });},
                    child: Column(
                      children: [
                        Text('Behind Schedule',style: TextStyle(
                          color: active==0 ? AppColors.C_2563EB : AppColors.C_202D41.withOpacity(0.5),
                          fontFamily: 'GalanoGrotesque-Medium',
                          fontSize: 14.sp,
                        ),),
                        SizedBox(height: 10.h,),
                        MyContainer(active: active==0),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 111.w,
                  child: TextButton(
                    onPressed: (){setState(() {
                      active=1;
                    });},
                    child: Column(
                      children: [
                        Text('Upcoming',style: TextStyle(
                          color: active==1 ? AppColors.C_2563EB : AppColors.C_202D41.withOpacity(0.5),
                          fontFamily: 'GalanoGrotesque-Medium',
                          fontSize: 14.sp,
                        ),),
                        SizedBox(height: 10.h,),
                        MyContainer(active: active==1),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 111.w,
                  child: TextButton(
                    onPressed: (){setState(() {
                      active=2;
                    });},
                    child: Column(
                      children: [
                        Text('Completed',style: TextStyle(
                          color: active==2 ? AppColors.C_2563EB : AppColors.C_202D41.withOpacity(0.5),
                          fontFamily: 'GalanoGrotesque-Medium',
                          fontSize: 14.sp,
                        ),),
                        SizedBox(height: 10.h,),
                        MyContainer(active: active==2),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 247.h,),
                  active==1 ? const Upcoming():const BehindSchedule(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const TaskAddScreen()));
        },
        backgroundColor: AppColors.white,
        child: Image.asset(AppImages.add),
      ),
    );
  }
}