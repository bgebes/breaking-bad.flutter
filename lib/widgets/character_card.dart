import 'package:breaking_bad/widgets/card_front.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatefulWidget {
  const CharacterCard({super.key});

  @override
  State<CharacterCard> createState() => _CharacterCard();
}

class _CharacterCard extends State<CharacterCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Card(
      margin: const EdgeInsets.only(top: 16.0),
      color: Colors.transparent,
      elevation: 10,
      child: SizedBox(
        height: size.height / 1.5,
        width: size.width / 1.25,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const CardFront(),
        ),
      ),
    );
  }
}