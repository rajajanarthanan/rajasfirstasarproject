import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'testbloc_event.dart';
part 'testbloc_state.dart';
part 'testbloc_bloc.freezed.dart';

class TestblocBloc extends Bloc<TestblocEvent, TestblocState> {
  TestblocBloc() : super(_Initial()) {
    on<TestblocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
