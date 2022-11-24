import 'package:breaking_bad/widgets/card_back.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:breaking_bad/models/character.dart';
import 'package:breaking_bad/widgets/card_front.dart';

class CharacterCard extends StatefulWidget {
  const CharacterCard({super.key, required this.fCharacter});

  final Future<Character> fCharacter;

  @override
  State<CharacterCard> createState() => _CharacterCard();
}

class _CharacterCard extends State<CharacterCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget card(Character character) {
      return Card(
        margin: const EdgeInsets.only(top: 16.0),
        color: Colors.transparent,
        elevation: 10,
        child: SizedBox(
          height: size.height / 1.5,
          width: size.width / 1.25,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: FlipCard(
              front: CardFront(character: character),
              back: CardBack(character: character),
              flipOnTouch: true,
            ),
          ),
        ),
      );
    }

    Widget futureBridge(Function child) {
      return FutureBuilder(
        future: widget.fCharacter,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Character character = snapshot.data!;

            return child(character);
          }

          return const CircularProgressIndicator();
        },
      );
    }

    return futureBridge(card);
  }
}
