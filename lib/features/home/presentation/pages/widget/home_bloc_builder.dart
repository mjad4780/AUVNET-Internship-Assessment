import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/home/presentation/bloc/home_bloc.dart';

import '../../../../../core/get_it/get_it.dart';
import '../../../../../core/widget/failer_widget.dart';
import '../../../../../core/widget/loading.dart';

class HomeBlocBuilder extends StatelessWidget {
  const HomeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>(),
      child: BlocBuilder<HomeBloc, HomeState>(
        buildWhen:
            (previous, current) =>
                current is HomeLoaded ||
                current is HomeError ||
                current is HomeLoading,
        builder: (context, state) {
          if (state is HomeLoading) {
            return LoadingWidget(child: Center(child: Container()));
          } else if (state is HomeError) {
            return FailerWidget(
              messege: state.message,
              icon: Icons.error,
              onPressed: () => context.read<HomeBloc>().add(FetchHomeData()),
            );
          } else if (state is HomeLoaded) {
            return const Center(child: Text('Home Loaded'));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
