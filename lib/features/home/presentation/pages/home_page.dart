import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/get_it/get_it.dart';

import 'package:task/features/home/presentation/bloc/home_bloc.dart';
import 'package:task/features/home/presentation/pages/widget/home_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()..add(FetchHomeData()),
      child: Builder(
        builder: (context) {
          return RefreshIndicator(
            onRefresh: () async {
              context.read<HomeBloc>().add(FetchHomeData());
            },

            child: HomeBlocBuilder(),
          );
        },
      ),
    );
  }
}
