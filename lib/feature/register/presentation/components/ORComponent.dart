import 'package:flutter/cupertino.dart';

class ORComponent extends StatelessWidget {
  const ORComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: [
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.356,
          height: 1,
          color: const Color(0xA36B4B8E),
        ),
        Text(
          'OR',
          style: const TextStyle(
            fontSize: 16,
            height: 24 / 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Color(0xA36B4B8E),
          ),
        ),
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.356,
          height: 1,
          color: const Color(0xA36B4B8E),
        ),
      ],
    );
  }
}
