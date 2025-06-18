import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entities/home_entity.dart';
import '../../domain/usecases/home_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

// Bloc for Home feature
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase getHomeData;

  // Constructor
  HomeBloc({required this.getHomeData}) : super(HomeInitial()) {
    on<FetchHomeData>(_onFetchHomeData);
  }

  // Handle FetchHomeData event
  Future<void> _onFetchHomeData(
    FetchHomeData event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeLoading());

    final result = await getHomeData.call();
    result.fold(
      // On failure
      (failure) => emit(HomeError(failure.message)),
      // On success
      (data) => emit(HomeLoaded(data)),
    );
  }
}
