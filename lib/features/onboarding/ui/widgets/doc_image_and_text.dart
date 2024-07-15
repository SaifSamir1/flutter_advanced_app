

import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/generated/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/text_style.dart';


class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Assets.svgsDocLogoLow),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              // عدد العناصر جوا ال stop list هو نفس العدد الموجود في color list اللي هي فوق
              stops: const [.14, 0.4],
            ),
          ),
          child: Image.asset(Assets.imagesOnboardingDocterImage),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign  .center,
            style: TextStyles.font32BlueBold.copyWith(
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}