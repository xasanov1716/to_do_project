import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_project/utils/app_colors.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';


class UniversalInputView extends StatefulWidget {
  const UniversalInputView({
    Key? key,
    required this.hintText,
    required this.inputType,
    this.isStudentId = false,
 required this.onChanged,
  }) : super(key: key);


  final ValueChanged onChanged;
  final String hintText;
  final bool isStudentId;
  final TextInputType inputType;

  @override
  State<UniversalInputView> createState() => _UniversalInputViewState();
}

class _UniversalInputViewState extends State<UniversalInputView> {
  final TextEditingController textController = TextEditingController();
  bool check = false;
  @override
  void initState() {
    textController.addListener(() {

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          TextField(
            onChanged: widget.onChanged,
            obscureText: check,
            controller: textController,
            keyboardType: widget.inputType,
            textInputAction: TextInputAction.done,
            cursorHeight: 25,
            style:  TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: AppColors.C_202D41,
            ),
            decoration: InputDecoration(
              suffixIcon: check ? ZoomTapAnimation(onTap: (){check = true;setState(() {

              });},child: const Icon(Icons.visibility)) : ZoomTapAnimation(onTap: (){},child: Icon(Icons.visibility_off_sharp)),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              hintText: widget.hintText,
              hintStyle:  TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColors.C_202D41.withOpacity(0.5),
              ),
              fillColor: AppColors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide:
                  const BorderSide(width: 1, color: Color(0xFFE2E4E7))),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(width: 1, color: AppColors.C_202D41)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(width: 1, color: AppColors.white)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(width: 1, color: AppColors.white)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide:
                  const BorderSide(width: 1, color: AppColors.white)),
            ),
          )
        ],
      ),
    );
  }
}