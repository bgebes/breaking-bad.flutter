import 'package:breaking_bad/models/occupation.dart';

class Character {
  String? name;
  String? nickname;
  String? birthday;
  List<Occupation>? occupations;

  Character({this.name, this.nickname, this.birthday, this.occupations});

  String? get getName {
    return name;
  }

  String? get getNickname {
    return nickname;
  }

  String? get getBirthday {
    return birthday;
  }

  List<Occupation>? get getOccupations {
    return occupations;
  }
}
