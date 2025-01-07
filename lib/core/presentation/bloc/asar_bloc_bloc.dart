import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'asar_bloc_event.dart';
part 'asar_bloc_state.dart';
part 'asar_bloc_bloc.freezed.dart';

class AsarBlocBloc extends Bloc<AsarBlocEvent, AsarBlocState> {
  AsarBlocBloc() : super(_Initial()) {
    on<AsarBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
