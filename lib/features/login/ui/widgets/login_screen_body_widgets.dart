
import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/features/login/ui/widgets/termes_and_conditions_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/text_style.dart';
import '../../../../core/widgets/custom_text_button.dart';
import '../../logic/login_cubit.dart';
import 'already_have_acount.dart';
import 'email_and_password_section.dart';
import 'login_bloc_listner.dart';

class LoginScreenBodyWidgets extends StatelessWidget {
  const LoginScreenBodyWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const EmailAndPassword(),
        verticalSpace(24),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Text(
            'Forgot Password?',
            style: TextStyles.font13BlueRegular,
          ),
        ),
        verticalSpace(40),
        AppTextButton(
          buttonText: "Login",
          textStyle: TextStyles.font16WhiteSemiBold,
          onPressed: () {
            validateThenDoLogin(context);
          },
        ),
        verticalSpace(16),
        const TermsAndConditionsText(),
        verticalSpace(60),
        const AlreadyHaveAccountText(),
        const LoginBlocListener(),
      ],
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
