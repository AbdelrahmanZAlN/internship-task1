import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Function(String) onChange;
  const CustomTextField({
    super.key,
    required this.onChange,
    required this.hint,
});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: Color(0x804D306C)
      ),
      validator: (text){
        if(text?.isEmpty==true){
          return 'required field';
        }
        return null;
      },
      onChanged: onChange,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0x80E5D0FC),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 16,
          // height: 24,
          fontWeight: FontWeight.w500,
          color: Color(0x804D306C),
        ),
        border:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
            width: 2,
            // style:
            color: Color(0xA3E5D0FC)
          )
        ),
        enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                width: 2,
                color: Color(0xA3E5D0FC))
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 2,
            color: Color(0x804D306C), // optional focus color
          ),
        ),
      ),
    );
  }
}
