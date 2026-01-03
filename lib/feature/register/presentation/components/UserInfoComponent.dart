import 'package:flutter/cupertino.dart';

import '../../../../core/widgets/custom_text_form_field.dart';

class UserInfoComponent extends StatelessWidget {
  const UserInfoComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      spacing: 24,
      children: [
        CustomTextField(
          hint: 'Email',
          onChange: (text) {
          },
        ),
        Row(
          // spacing: 22,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * (170.9 / 393),
              height: 56,
              child: CustomTextField(
                hint: 'First name',
                onChange: (text) {
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.056,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * (170.9 / 393),
              height: 56,
              child: CustomTextField(
                hint: 'Last name',
                onChange: (text) {
                },
              ),
            ),
          ],
        ),
        CustomTextField(
          onChange: (text) {
          },
          hint: 'Password',
        ),
        CustomTextField(
          onChange: (text) {
          },
          hint: 'Confirm password',
        ),

      ],
    );
  }
}
