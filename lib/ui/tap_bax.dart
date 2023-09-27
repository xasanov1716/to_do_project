import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_project/ui/calendar/calendar_screen.dart';
import 'package:to_do_project/ui/home/home_screen.dart';
import 'package:to_do_project/ui/profile/profile_screen.dart';
import 'package:to_do_project/ui/task/task_screen.dart';
import 'package:to_do_project/utils/app_colors.dart';
import 'package:to_do_project/utils/app_images.dart';

class TabBox extends StatefulWidget {
  const TabBox({Key? key}) : super(key: key);

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {


List<Widget> screens = [];
int tapIndex = 0;
@override
  void initState() {
      screens.add(const HomeScreen());
      screens.add(const TaskScreen());
      screens.add(const CalendarScreen());
      screens.add(const ProfileScreen());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[tapIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColors.C_202D41.withOpacity(0.4),
        selectedItemColor:AppColors.C_2563EB,
        currentIndex: tapIndex,
        onTap: (value){
          setState(() {
          tapIndex = value;
          });
        },
        items: [
          getBottomNavItem(activeIcon: AppImages.activeMenu, icon: AppImages.menu, label: 'Menu'),
          getBottomNavItem(activeIcon: AppImages.activeTask, icon: AppImages.task, label: 'Task'),
          getBottomNavItem(activeIcon: AppImages.activeCalendar, icon: AppImages.calendar, label: 'Calendar'),
          getBottomNavItem(activeIcon: AppImages.activeProfile, icon: AppImages.profile, label: 'Profile'),
        ],
      ),
    );
  }
BottomNavigationBarItem getBottomNavItem({
  required String activeIcon,
  required String icon,
  required String label,
}) {
  return BottomNavigationBarItem(
    activeIcon: SvgPicture.asset(activeIcon),
    icon: SvgPicture.asset(icon),
    label: label,
  );
}
}
