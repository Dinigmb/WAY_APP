import 'package:flow_app/domain/asana/asana.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'flow_state.dart';

class FlowBloc extends StateNotifier<FlowState> {
  FlowBloc() : super(FlowState(selectedAsanas: []));

  void toggleAsana(Asana asana) {
    if (state.selectedAsanas.contains(asana)) {
      state = FlowState(selectedAsanas: state.selectedAsanas..remove(asana));
    } else {
      state = FlowState(selectedAsanas: state.selectedAsanas..add(asana));
    }
  }

  bool isSelected(Asana asana) => state.selectedAsanas.contains(asana);
}

final flowBlocProvider = StateNotifierProvider((_) => FlowBloc());
