part of 'asar_bloc_bloc.dart';

@freezed
class AsarBlocEvent with _$AsarBlocEvent {
  const factory AsarBlocEvent.started() = _Started;
}