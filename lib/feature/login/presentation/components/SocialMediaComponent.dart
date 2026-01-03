import 'package:flutter/cupertino.dart';

import '../../../../core/utils/assets.dart';

class SocialMediaComponent extends StatelessWidget {
  const SocialMediaComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 32,
      children: [
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.102,
          // 40.dp
          height: MediaQuery
              .of(context)
              .size
              .width * 0.102,
          padding: EdgeInsets.all(
            MediaQuery
                .of(context)
                .size
                .width * 0.0204, // 8.dp
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFFF5ECFF),
            border: Border.all(
              width: 1,
              color: const Color(0xFF4D306C),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x40000000),
                blurRadius: 8,
                spreadRadius: 0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Image.asset(
            AssetsData.socialGooglePng,
            fit: BoxFit.contain,
          ),
        ),
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.102,
          // 40.dp
          height: MediaQuery
              .of(context)
              .size
              .width * 0.102,
          padding: EdgeInsets.all(
            MediaQuery
                .of(context)
                .size
                .width * 0.0204, // 8.dp
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFFF5ECFF),
            border: Border.all(
              width: 1,
              color: const Color(0xFF4D306C),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x40000000),
                blurRadius: 8,
                spreadRadius: 0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Image.asset(
            AssetsData.twitterIconPng,
            fit: BoxFit.contain,
          ),
        ),
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.102,
          // 40.dp
          height: MediaQuery
              .of(context)
              .size
              .width * 0.102,
          padding: EdgeInsets.all(
            MediaQuery
                .of(context)
                .size
                .width * 0.0204, // 8.dp
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFFF5ECFF),
            border: Border.all(
              width: 1,
              color: const Color(0xFF4D306C),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x40000000),
                blurRadius: 8,
                spreadRadius: 0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Image.asset(
            AssetsData.facebookIconPng,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
