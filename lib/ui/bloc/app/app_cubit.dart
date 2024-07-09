import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../bloc_scope.dart';

part 'app_state.dart';

part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> with BlocScope {
  AppCubit() : super(const AppState()) {
    initListener();
  }

  void initListener() {}

  void setCurrentTab(int tab) {
    emit(state.copyWith(currentTab: tab));
  }
}
