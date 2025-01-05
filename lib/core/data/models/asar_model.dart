import 'package:rajas_first_asar_game/core/domain/entitiies/asar_entity.dart';

abstract class AsarModel {
  Map<String, dynamic> toJon(AsarModel model);
  AsarModel fromJson(Map<String, dynamic> json);
  AsarEntity toEntity(AsarModel model);
}