import 'package:bloc/bloc.dart';
import 'package:login/repository/to_do_repository/models/to_do.dart';
import 'package:login/repository/to_do_repository/to_do_repository.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.toDoRepository)
      : super(
          HomeInitial(),
        ) {
    getToDoList();
  }

  final ToDoRepository toDoRepository;

  Future<void> getToDoList() async {
    try {
      emit(HomeLoading());
      var toDos = await toDoRepository.getToDos();

      print('toDos in: $toDos');
      return emit(HomeLoaded(toDos));
    } catch (e) {
      emit(HomeError('Something went wrong'));
    }
  }
}
