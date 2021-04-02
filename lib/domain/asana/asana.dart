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

extension AsanaX on Asana {
  String get correctName => name.replaceAll('_', ' ');
  String get correctCategory => category.replaceAll('_', ' ');
}

final asanas = [
  Asana(
    imagePath: 'Backward_Bends/Backward_Bends_Copra.png',
    name: 'Cobra',
    category: 'Backward_Bends',
  ),
  Asana(
    imagePath: 'Backward_Bends/Backward_Bends_High_Lunge.png',
    name: 'High Lunge',
    category: 'Backward_Bends',
  ),
  Asana(
    imagePath: 'Balance/Balance_Tree.png',
    name: 'Tree Pose',
    category: 'Balance',
  ),
  Asana(
    imagePath: 'Balance/Balance_Yoga_Sit.png',
    name: 'Yoga Sit',
    category: 'Balance',
  ),
  Asana(
    imagePath: 'Core/Core_Boat.png',
    name: 'Boat Pose',
    category: 'Core',
  ),
  Asana(
    imagePath: 'Core/Core_Chaturanga.png',
    name: 'Chaturanga',
    category: 'Core',
  ),
  Asana(
    imagePath: 'Core/Core_Half_Bow.png',
    name: 'Half Bow',
    category: 'Core',
  ),
  Asana(
    imagePath: 'Core/Core_Reverse_Plank_.png',
    name: 'Reverse Plank',
    category: 'Core',
  ),
  Asana(
    imagePath: 'Forward_Bends/Forward_Bends_Bending_Namaste.png',
    name: 'Bending Namaste',
    category: 'Forward_Bends',
  ),
  Asana(
    imagePath: 'Forward_Bends/Forward_Bends_Downward_Looking_Dog.png',
    name: 'Downward Looking Dog',
    category: 'Forward_Bends',
  ),
  Asana(
    imagePath: 'Forward_Bends/Forward_Bends_Marichis_Pose.png',
    name: 'Marichis Pose',
    category: 'Forward_Bends',
  ),
  Asana(
    imagePath: 'Forward_Bends/Forward_Bends_Table_Top.png',
    name: 'Table Top',
    category: 'Forward_Bends',
  ),
  Asana(
    imagePath: 'Forward_Bends/Forward_Bends_Wide_Stance_Forward_Bend.png',
    name: 'Wide Stande Forward Bend',
    category: 'Forward_Bends',
  ),
  Asana(
    imagePath: 'Hip_Opener/Hip_Opener_Big_Toe_Supine.png',
    name: 'Big Toe Supine',
    category: 'Hip_Opener',
  ),
  Asana(
    imagePath: 'Hip_Opener/Hip_Opener_Butterfly_.png',
    name: 'Butterfly',
    category: 'Hip_Opener',
  ),
  Asana(
    imagePath: 'Hip_Opener/Hip_Opener_Cow_face.png',
    name: 'Cow Face',
    category: 'Hip_Opener',
  ),
  Asana(
    imagePath: 'Hip_Opener/Hip_Opener_Lizard.png',
    name: 'Opener Lizard',
    category: 'Hip_Opener',
  ),
  Asana(
    imagePath: 'Hip_Opener/Hip_Opener_Turtle_.png',
    name: 'Turtle',
    category: 'Hip_Opener',
  ),
  Asana(
    imagePath: 'Inversions/Inversions_Back_Bridge_.png',
    name: 'Back Bridge',
    category: 'Inversions',
  ),
  Asana(
    imagePath: 'Inversions/Inversions_Candel.png',
    name: 'Candel Pose',
    category: 'Inversions',
  ),
  Asana(
    imagePath: 'Inversions/Inversions_Fish.png',
    name: 'Fish',
    category: 'Inversions',
  ),
  Asana(
    imagePath: 'Inversions/Inversions_Full_Weel.png',
    name: 'Full Weel',
    category: 'Inversions',
  ),
  Asana(
    imagePath: 'Inversions/Inversions_Handstand.png',
    name: 'Handstand',
    category: 'Inversions',
  ),
  Asana(
    imagePath: 'Inversions/Inversions_Headstand.png',
    name: 'Headstand',
    category: 'Inversions',
  ),
  Asana(
    imagePath: 'Inversions/Inversions_Plough_.png',
    name: 'Plough Pose',
    category: 'Inversions',
  ),
  Asana(
    imagePath: 'Meditative/Meditative_Lotus.png',
    name: 'Lotus Pose',
    category: 'Meditative',
  ),
  Asana(
    imagePath: 'Relaxation/Relaxation_Child.png',
    name: 'Child',
    category: 'Relaxation',
  ),
  Asana(
    imagePath: 'Relaxation/Relaxation_Happy_Baby.png',
    name: 'Happy Baby',
    category: 'Relaxation',
  ),
  Asana(
    imagePath: 'Relaxation/Relaxation_Holding_Knee.png',
    name: 'Holding Knee',
    category: 'Relaxation',
  ),
  Asana(
    imagePath: 'Side_Bends/Side_Bends_Side_Planke.png',
    name: 'Side Planke',
    category: 'Side_Bends',
  ),
  Asana(
    imagePath: 'Side_Bends/Side_Bends_Sitting_Side_Bend.png',
    name: 'Sitting Side Bend',
    category: 'Side_Bends',
  ),
  Asana(
    imagePath: 'Twisting/Twisting_Namaste_Twist.png',
    name: 'Namaste Twist',
    category: 'Twisting',
  ),
  Asana(
    imagePath: 'Twisting/Twisting_Side_Bend_Lay.png',
    name: 'Side Bend Lay',
    category: 'Twisting',
  ),
  Asana(
    imagePath: 'Twisting/Twisting_Sitting_Twist.png',
    name: 'Sitting Twist',
    category: 'Twisting',
  ),
  Asana(
    imagePath: 'Twisting/Twisting_Trikona_Twist.png',
    name: 'Trikona Twist',
    category: 'Twisting',
  ),
];
