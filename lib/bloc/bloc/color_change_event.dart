part of 'color_change_bloc.dart';

@freezed
class ColorChangeEvent with _$ColorChangeEvent {
  const factory ColorChangeEvent.toggleColors() = _ToggleColors;
}
