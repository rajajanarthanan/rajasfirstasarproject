part of 'asar_tv_events_bloc.dart';

@freezed
class AsarTvEventsState with _$AsarTvEventsState {
  const factory AsarTvEventsState.initial() = _Initial;
  const factory AsarTvEventsState.loading() = _Loading;
  const factory AsarTvEventsState.loaded(List<TradingEventsModel> events) = _Loaded;
  const factory AsarTvEventsState.error() = _Error;
}
