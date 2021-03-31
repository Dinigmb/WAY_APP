import 'package:freezed_annotation/freezed_annotation.dart';

part 'asana.freezed.dart';

@freezed
abstract class Asana with _$Asana {
  const factory Asana({
    required String imagePath,
    required String name,
    required String category,
  }) = _Asana;
}

final asanas = [
  Asana(
    imagePath: 'assets/Back/Back Bridge.png',
    name: 'Back Bridge',
    category: 'Back',
  ),
  Asana(
    imagePath: 'assets/Balance/Balance Tree.png',
    name: 'Balance Tree',
    category: 'Balance',
  ),
];
