import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_change_event.dart';
part 'color_change_state.dart';
part 'color_change_bloc.freezed.dart';

class ColorChangeBloc extends Bloc<ColorChangeEvent, ColorChangeState> {
  ColorChangeBloc() : super(ColorChangeState.initial()) {
    on<ColorChangeEvent>((ColorChangeEvent event, Emitter emit) {
      if (state.isRed) {
        emit(state.copyWith(isRed: false));
      } else {
        emit(state.copyWith(isRed: true));
      }
    });
  }
}
