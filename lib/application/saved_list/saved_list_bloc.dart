// import 'package:flow_app/application/saved_list/saved_list_state.dart';
// import 'package:flow_app/domain/asana/asana.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class SavedFlowBloc extends StateNotifier<SavedFlow> {
//   SavedFlowBloc() : super(SavedFlow(savedList: []));

//   void List(Asana selectedAsanas) {
//     if (state.savedList.contains(selectedAsanas)) {
//       state = SavedFlow(savedList: state.savedList..add(selectedAsanas));
//     }
//   }

//   bool isSelected(Asana asana) => state.savedList.contains(selectedAsanas);
// }

// final flowBlocProvider = StateNotifierProvider((_) => SavedFlowBloc());
