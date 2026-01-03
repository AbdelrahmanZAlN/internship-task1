import 'package:flutter/material.dart';

import '../../core/utils/assets.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(AssetsData.onboardingOnePng,
            // fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
