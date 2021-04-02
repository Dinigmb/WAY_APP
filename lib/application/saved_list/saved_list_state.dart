import 'package:flow_app/domain/asana/asana.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_list_state.freezed.dart';

@freezed
abstract class SavedFlow with _$SavedFlow {
  const factory SavedFlow({
    required List<List<Asana>> savedList,
  }) = _SavedFlow;
}
