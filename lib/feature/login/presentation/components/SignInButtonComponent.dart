import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';

class SignInButtonComponent extends StatelessWidget {
  const SignInButtonComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          Color(0xFFAD46FF),
        ),
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: 18),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8,
        children: [
          Text(
            'Get Started',
            style: TextStyle(
              fontSize: 14,
              height: 20 / 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Image.asset(
            AssetsData.buttonIconPng,
            width: 16,
            height: 16,
          ),
        ],
      ),
    );
  }
}
