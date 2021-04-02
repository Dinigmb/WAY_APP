import 'package:flow_app/domain/asana/asana.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flow_state.freezed.dart';

@freezed
abstract class FlowState with _$FlowState {
  const factory FlowState({
    required List<Asana> selectedAsanas,
  }) = _FlowState;
}
