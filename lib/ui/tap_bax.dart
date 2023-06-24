import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_project/ui/home/home_screen.dart';
import 'package:to_do_project/utils/app_colors.dart';
import 'package:to_do_project/utils/app_images.dart';

class TapBax extends StatefulWidget {
  const TapBax({Key? key}) : super(key: key);

  @override
  State<TapBax> createState() => _TapBaxState();
}

class _TapBaxState extends State<TapBax> {


List<Widget> screens = [];
int tapIndex = 0;
@override
  void initState() {
      screens.add(const HomeScreen());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Login',style: TextStyle(fontSize: 45.sp,fontFamily: 'GalanoGrotesque-Medium'),),),
      bottomNavigationBar: BottomNavigationBar(
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
          BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.menu,),label: 'Menu' ),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.task),label: 'Task' ),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.calendar),label: 'Calendar' ),
          BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.profile),label: 'Profile' ),
        ],
      ),
    );
  }
}
