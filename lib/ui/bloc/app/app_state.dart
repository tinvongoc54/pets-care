part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(0) int currentTab,
  }) = _AppState;
}
