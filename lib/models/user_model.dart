import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject {
  @HiveField(0)
  String? apikey;

  @HiveField(1)
  String? firstname;

  @HiveField(2)
  String? lastname;

  @HiveField(3)
  String? userlevel;

  @HiveField(4)
  String? cookie;

  UserModel(
      {this.apikey,
      this.firstname,
      this.lastname,
      this.userlevel,
      this.cookie});
}
