abstract class AsarModel {
  Map<String, dynamic> toJson();
  static AsarModel fromJson(Map<String, dynamic> json){
    throw UnimplementedError();
  }
  dynamic toEntity();
}