import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/extensions/extention_navigator.dart';
import '../../../../core/Router/route_string.dart';
import '../../../../core/helpers/awesome_dialog.dart';
import '../bloc/auth_bloc.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen:
          (previous, current) =>
              current is SignUpError ||
              current is SignUpLoading ||
              current is SignUpSuccess,
      listener: (context, state) {
        if (state is SignUpSuccess) {
          context.pop();
          context.pushName(StringRoute.signIn);
        } else if (state is SignUpError) {
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
