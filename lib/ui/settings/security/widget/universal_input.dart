import 'package:flutter/material.dart';


class UniversalInputView extends StatefulWidget {
  const UniversalInputView({
    Key? key,
    required this.caption,
    required this.hintText,
    required this.inputType,
    this.isStudentId = false,
    required this.obscureText, required this.onChanged,
  }) : super(key: key);


  final ValueChanged onChanged;
  final String hintText;
  final bool isStudentId;
  final bool obscureText;
  final TextInputType inputType;

  @override
  State<UniversalInputView> createState() => _UniversalInputViewState();
}

class _UniversalInputViewState extends State<UniversalInputView> {
  final TextEditingController textController = TextEditingController();

  @override
  void initState() {
    textController.addListener(() {});
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
          Text(
            widget.caption,
            style:  TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: AppColor.C_FFFFFF,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            onChanged: widget.onChanged,
            obscureText: widget.obscureText,
            controller: textController,
            keyboardType: widget.inputType,
            textInputAction: TextInputAction.done,
            cursorHeight: 25,
            style:  TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: AppColor.C_FFFFFF,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
              fillColor: AppColor.C_0C042E,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide:
                  const BorderSide(width: 1, color: Color(0xFFCBD5E1))),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide:
                  const BorderSide(width: 1, color: Color(0xFFCBD5E1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide:
                  const BorderSide(width: 1, color: Color(0xFFCBD5E1))),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide:
                  const BorderSide(width: 1, color: Color(0xFFCBD5E1))),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide:
                  const BorderSide(width: 1, color: Color(0xFFCBD5E1))),
            ),
          )
        ],
      ),
    );
  }
}