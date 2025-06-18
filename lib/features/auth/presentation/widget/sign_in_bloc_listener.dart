import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/extensions/extention_navigator.dart';
import '../../../../core/Router/route_string.dart';
import '../../../../core/helpers/awesome_dialog.dart';
import '../bloc/auth_bloc.dart';

class SignInBlocListener extends StatelessWidget {
  const SignInBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen:
          (previous, current) =>
              current is SignInError ||
              current is SignInLoading ||
              current is SignInSuccess,
      listener: (context, state) {
        if (state is SignInSuccess) {
          context.pop();

          context.pushName(StringRoute.home);
        } else if (state is SignInError) {
          context.pop();
          buildErorr(context, state.message);
        } else {
          showDialog(
            context: context,
            builder:
                (context) => const Center(
                  child: CircularProgressIndicator(color: Colors.blue),
                ),
          );
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
