
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../logic/signup_cubit.dart';

class PasswordFormFields extends StatefulWidget {
  const PasswordFormFields(
      {super.key,
        required this.hasLowerCase,
        required this.hasUpperCase,
        required this.hasSpecialCharacters,
        required this.hasNumber,
        required this.hasMinLength});

  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  @override
  State<PasswordFormFields> createState() => _PasswordFormFieldsState();
}

class _PasswordFormFieldsState extends State<PasswordFormFields> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          controller: context.read<SignupCubit>().passwordController,
          hintText: 'Password',
          isObscureText: isPasswordObscureText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isPasswordObscureText = !isPasswordObscureText;
              });
            },
            child: Icon(
              isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
            ),
          ),
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                widget.hasLowerCase == false ||
                widget.hasUpperCase == false ||
                widget.hasSpecialCharacters == false ||
                widget.hasNumber == false ||
                widget.hasMinLength == false) {
              return 'Enter a password that meets all the conditions';
            }
          },
        ),
        verticalSpace(18),
        AppTextFormField(
          controller:
          context.read<SignupCubit>().passwordConfirmationController,
          hintText: 'Password Confirmation',
          isObscureText: isPasswordConfirmationObscureText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isPasswordConfirmationObscureText =
                !isPasswordConfirmationObscureText;
              });
            },
            child: Icon(
              isPasswordConfirmationObscureText
                  ? Icons.visibility_off
                  : Icons.visibility,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
            if (context.read<SignupCubit>().passwordConfirmationController.text !=
                context.read<SignupCubit>().passwordController.text) {
              return 'Passwords do not match';
            }
          },
        ),
      ],
    );
  }
}