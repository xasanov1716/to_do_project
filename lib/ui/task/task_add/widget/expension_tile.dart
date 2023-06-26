import 'package:flutter/material.dart';
import 'package:to_do_project/utils/app_colors.dart';

// ignore: must_be_immutable
class MyExpansionTile extends StatelessWidget {
  MyExpansionTile({super.key,required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.3,color: AppColors.C_202D41.withOpacity(0.7),),
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10),)
      ),
      child: ExpansionTile(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.3,
            color: AppColors.C_202D41.withOpacity(0.7),
        ),
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomRight: Radius.circular(10),)
        ),
        title: Text(title),
        backgroundColor: AppColors.white,
        initiallyExpanded: false,
        children: <Widget>[
          Text('data'),
          Text('data'),
          Text('data'),
          Text('data'),
        ],
      ),
    );
  }
}
