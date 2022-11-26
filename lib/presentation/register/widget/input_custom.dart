import 'package:flutter/material.dart';

class InputCustom extends StatelessWidget {
  final String hintText, validatorTexts;
  final TextEditingController? controller;
  const InputCustom(
      {Key? key,
      required this.hintText,
      required this.validatorTexts,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 45, right: 45),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
          border: Border.all(color: Color(0xFF6F0C41), width: 2),
          // border: Border(bottom: BorderSide.none),
          borderRadius: BorderRadius.circular(5),
        ),
        margin: new EdgeInsets.only(bottom: 5.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: TextFormField(
            cursorColor: Colors.white,
            controller: controller,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),

            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return validatorTexts;
              }
              return null;
            },
          ),
        ),
      ),
    );
  }
}
