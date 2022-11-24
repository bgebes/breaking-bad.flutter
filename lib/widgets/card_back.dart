import 'package:breaking_bad/helpers/variable_breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:breaking_bad/models/character.dart';

class CardBack extends StatelessWidget {
  const CardBack({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    var headerStyles = TextStyle(color: secondaryColor, fontSize: 24);
    var descStyles = TextStyle(color: fourthColor, fontSize: 24);

    var name = Container(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Text(
        character.name,
        style: TextStyle(
            color: secondaryColor, fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );

    var nickname = Column(
      children: [
        Text(
          "Nickname",
          style: headerStyles,
        ),
        Text(
          character.nickname,
          style: descStyles,
        ),
      ],
    );

    var birthday = Column(
      children: [
        Text("Birthday", style: headerStyles),
        Text(
          character.birthday,
          style: descStyles,
        ),
      ],
    );

    var occupationsWidgets = character.occupations
        .map(
          (e) => Text(
            e.title,
            style: descStyles,
          ),
        )
        .toList();

    var occupations = Column(
      children: [
        Text("Occupations", style: headerStyles),
        ...occupationsWidgets
      ],
    );

    return Container(
      color: thirdColor,
      child: Column(
        children: [
          name,
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: nickname,
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: birthday,
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: occupations,
          ),
        ],
      ),
    );
  }
}
