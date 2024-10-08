import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/routing/routes.dart';
import 'package:flutter_advanced_app/features/login/logic/login_cubit.dart';
import 'package:flutter_advanced_app/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:flutter_advanced_app/features/signup/ui/screens/signup_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/home/ui/screens/home_screen.dart';
import '../../features/login/ui/screens/login_screen.dart';
import '../../features/signup/logic/signup_cubit.dart';
import '../di/dependecy_injection.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen()),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return null;
    }
  }
}