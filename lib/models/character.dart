import 'package:breaking_bad/models/occupation.dart';

class Character {
  final String imgUrl;
  final String name;
  final String nickname;
  final String birthday;
  final List<Occupation> occupations;

  const Character({
    required this.imgUrl,
    required this.name,
    required this.nickname,
    required this.birthday,
    required this.occupations,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    List<Occupation> occups = [];

    for (var occup in json["occupation"]) {
      occups.add(Occupation(title: occup));
    }

    return Character(
      imgUrl: json["img"],
      name: json["name"],
      nickname: json["nickname"],
      birthday: json["birthday"],
      occupations: occups,
    );
  }

  String get getImgUrl {
    return imgUrl;
  }

  String get getName {
    return name;
  }

  String get getNickname {
    return nickname;
  }

  String get getBirthday {
    return birthday;
  }

  List<Occupation> get getOccupations {
    return occupations;
  }
}
