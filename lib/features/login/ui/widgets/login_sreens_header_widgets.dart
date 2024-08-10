

import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/text_style.dart';

class LoginInScreenHeaderWidgets extends StatelessWidget {
  const LoginInScreenHeaderWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome Back',
          style: TextStyles.font24BlueBold,
        ),
        verticalSpace(8),
        Text(
          'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
          style: TextStyles.font14GrayRegular,
        ),
      ],
    );
  }
}
