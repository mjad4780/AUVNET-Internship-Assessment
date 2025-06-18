import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/extensions/extention_navigator.dart';
import 'package:task/core/helpers/app_regex.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/style/text_string.dart';
import 'package:task/core/widget/app_text_button.dart';
import 'package:task/core/widget/app_text_form_field.dart';
import 'package:task/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:task/features/auth/presentation/widget/sign_up_bloc_listener.dart';
import 'package:task/utility/images_aseets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key, required this.authBloc});
  final AuthBloc authBloc;
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

late TextEditingController email;
late TextEditingController password;
late TextEditingController repassword;
late GlobalKey<FormState> _formKey; // Defined at class level

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>(); // Initialize the form key
    email = TextEditingController();
    password = TextEditingController();
    repassword = TextEditingController();
  }

  @override
  void dispose() {
    email.dispose();
    _formKey.currentState?.dispose();
    password.dispose();
    repassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.authBloc,
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,

                  key: _formKey,
                  child: Column(
                    children: [
                      verticalSpace(40),
                      Center(
                        child: CircleAvatar(
                          radius: height(context) / 5.2,
                          backgroundImage: AssetImage(Assets.logoAuth),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            AppTextFormField(
                              prfixIcon: Icon(Icons.email_outlined),
                              hintText: AppTexts.mail,
                              controller: email,
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    !AppRegex.isEmailValid(value)) {
                                  return 'Please enter a valid email';
                                }
                              },
                            ),
                            verticalSpace(20),
                            AppTextFormField(
                              prfixIcon: Icon(Icons.lock_outline),
                              isObscureText: true,
                              controller: password,
                              hintText: AppTexts.password,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a valid password';
                                }
                              },
                            ),
                            verticalSpace(20),
                            AppTextFormField(
                              prfixIcon: Icon(Icons.lock_outline),

                              isObscureText: true,
                              controller: repassword,
                              hintText: AppTexts.password,
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    !AppRegex.repassword(
                                      password.text,
                                      value,
                                    )) {
                                  return 'Please enter a valid repassword';
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: AppTextButton(
                          buttonText: AppTexts.signUp,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<AuthBloc>().add(
                                SignUpEvent(
                                  email: email.text,
                                  password: password.text,
                                ),
                              );
                            }
                          },
                        ),
                      ),
                      verticalSpace(20),
                      Text(
                        AppTexts.createAccount,
                        style: context.textStyle.bodySmall,
                      ),
                      SignUpBlocListener(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
