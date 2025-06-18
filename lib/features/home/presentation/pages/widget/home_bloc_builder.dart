import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/home/domain/entities/home_entity.dart';
import 'package:task/features/home/presentation/bloc/home_bloc.dart';
import 'package:task/features/home/presentation/pages/widget/body_home.dart';

import '../../../../../core/widget/failer_widget.dart';
import '../../../../../core/widget/loading.dart';

class HomeBlocBuilder extends StatelessWidget {
  const HomeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen:
          (previous, current) =>
              current is HomeLoaded ||
              current is HomeError ||
              current is HomeLoading,
      builder: (context, state) {
        if (state is HomeLoading) {
          return LoadingWidget(
            child: BodyHome(
              home: HomeEntity(restaurants: [], services: [], posters: []),
            ),
          );
        } else if (state is HomeError) {
          return FailerWidget(
            messege: state.message,
            icon: Icons.error,
            onPressed: () => context.read<HomeBloc>().add(FetchHomeData()),
          );
        } else if (state is HomeLoaded) {
          return BodyHome(home: state.data);
        }
        return const SizedBox.shrink();
      },
    );
  }
}
