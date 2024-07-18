import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../widgets/login_screen_body_widgets.dart';
import '../widgets/login_sreens_header_widgets.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginInScreenHeaderWidgets(),
                verticalSpace(36),
                const LoginScreenBodyWidgets(),
              ],
            ),
          ),
        ),
      ),
    );
  }

}


