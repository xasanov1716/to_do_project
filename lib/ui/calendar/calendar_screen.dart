import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';

class CalendarScreen extends StatefulWidget {
  CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late TextEditingController textEditingController;
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day,DateTime focusedDay){
    setState(() {
      today=day;
    });
  }
  int active = 0;
  String selectedDate = "No Selected Date";

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        systemOverlayStyle:
        const SystemUiOverlayStyle(statusBarColor: AppColors.white),
        title: SizedBox(
          width: 77.w,
          child: Row(
            children: [
              Image.asset(
                AppImages.done,
                height: 23,
                width: 23,
              ),
              SizedBox(
                width: 5.w,
              ),
              const Text(
                'ToDo',
                style: TextStyle(
                  color: AppColors.C_2563EB,
                  fontWeight: FontWeight.w700,
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
                      child: SvgPicture.asset(AppImages.search),
                    ),
                    hintText: 'Search for Tasks, date,',
                    hintStyle: TextStyle(
                      color: const Color(0xFF202D41).withOpacity(0.5),
                      fontSize: 12.sp,
                      fontFamily: 'GalanoGrotesque-Medium',
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.clear();
                        });
                      },
                      icon: SvgPicture.asset(
                        AppImages.cancel,
                      ),
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
      body: Container(
        padding: EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            Container(
              child: TableCalendar(
                availableGestures: AvailableGestures.all,
                focusedDay: today,
                rowHeight: 60.h,
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                ),
                selectedDayPredicate: (day)=>isSameDay(day, today),
                firstDay: DateTime.utc(2003, 11, 15),
                lastDay: DateTime.utc(2030, 11, 15),
               onDaySelected: _onDaySelected,
              ),

            ),
            SizedBox(
              height: 40.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'In 5 Days',
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontFamily: 'GalanoGrotesque-Medium',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.C_202D41,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
           SizedBox(
             height: 56.h,
             width: 335.w,
             child: TextField(
               textAlign: TextAlign.start,
               keyboardType: TextInputType.text,
               decoration: InputDecoration(
                 hintText: "",
                 hintStyle: const TextStyle(fontSize: 16),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(8),
                   borderSide: const BorderSide(
                     width: 0,
                     style: BorderStyle.none,
                   ),
                 ),
                 filled: true,
                 contentPadding: const EdgeInsets.all(16),
               ),
             ),
           ),
          ],
        ),
      ),
    );
  }
}
