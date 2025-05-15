import 'package:freezed_annotation/freezed_annotation.dart';

import 'conv_title_model.dart';


part 'conv_title_state.freezed.dart';

@freezed
class ConvTitleState with _$ConvTitleState {
  factory ConvTitleState({
    @Default([]) List<ConvSessionData> data,
    @Default(false) bool isLoading,
  }) = _ConvTitleState;
}
