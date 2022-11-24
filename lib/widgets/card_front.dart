import 'package:breaking_bad/helpers/variable_breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:breaking_bad/models/character.dart';

class CardFront extends StatelessWidget {
  const CardFront({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var name = character.name;
    var nickname = character.nickname;

    var image = ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        character.imgUrl,
        fit: BoxFit.fill,
      ),
    );

    var subText = Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 2.3, vertical: 16),
      color: const Color(0xFF454444).withOpacity(0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(color: secondaryColor, fontSize: 60),
          ),
          Text(
            "\"$nickname\"",
            style: TextStyle(color: secondaryColor, fontSize: 40),
          ),
        ],
      ),
    );

    return FittedBox(
      fit: BoxFit.fill,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          image,
          subText,
        ],
      ),
    );
  }
}
