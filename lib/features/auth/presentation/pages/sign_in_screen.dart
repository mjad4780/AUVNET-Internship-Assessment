import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/Router/route_string.dart';
import 'package:task/core/extensions/extention_navigator.dart';
import 'package:task/core/get_it/get_it.dart';
import 'package:task/core/helpers/app_regex.dart';
import 'package:task/core/helpers/spacing.dart';
import 'package:task/core/style/text_string.dart';
import 'package:task/core/widget/app_text_button.dart';
import 'package:task/core/widget/app_text_form_field.dart';
import 'package:task/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:task/utility/images_aseets.dart';

import '../widget/sign_in_bloc_listener.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

late TextEditingController email;
late TextEditingController password;
late GlobalKey<FormState> _formKeyS; // Defined at class level

class _SignInScreenState extends State<SignInScreen> {
  @override
  void initState() {
    super.initState();
    _formKeyS = GlobalKey<FormState>(); // Initialize the form key
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    email.dispose();
    _formKeyS.currentState?.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,

                  key: _formKeyS,
                  child: Column(
                    children: [
                      verticalSpace(60),
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
                              hintText: AppTexts.mail,
                              prfixIcon: Icon(Icons.email_outlined),
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
                          ],
                        ),
                      ),
                      verticalSpace(20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: AppTextButton(
                          buttonText: AppTexts.logIn,
                          onPressed: () {
                            if (_formKeyS.currentState!.validate()) {
                              context.read<AuthBloc>().add(
                                SignInEvent(
                                  email: email.text,
                                  password: password.text,
                                ),
                              );
                            }
                          },
                        ),
                      ),
                      verticalSpace(20),
                      GestureDetector(
                        onTap: () {
                          context.pushName(
                            StringRoute.signUp,
                            arguments: context.read<AuthBloc>(),
                          );
                        },
                        child: Text(
                          AppTexts.createAccount,
                          style: context.textStyle.bodyMedium,
                        ),
                      ),
                      SignInBlocListener(),
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
