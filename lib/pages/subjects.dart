


import 'package:englishlessons/datamodel.dart';
import 'package:flutter/material.dart';

class SubjectsPage extends StatelessWidget {
  const SubjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SubjectItem(
          subject: Subject(
            id: 1,
            name: {'pl': 'Owoce', 'en': 'Fruits'},
            vocabulary: {'jabłko': 'apple', 'banan': 'banana'},
            sentences: {'Lubię jabłka.': 'I like apples.'},
            description: {'pl': 'Naucz się o owocach', 'en': 'Learn about fruits'},
            progress: 0.5,
          ),
        ),
        SubjectItem(
          subject: Subject(
            id: 2,
            name: {'pl': 'Kolory', 'en': 'Colors'},
            vocabulary: {'czerwony': 'red', 'niebieski': 'blue'},
            sentences: {'To jest czerwone.': 'This is red.'},
            description: {'pl': 'Naucz się o kolorach', 'en': 'Learn about colors'},
            progress: 0.8,
          ),
        ),
      ],
    );
  }
}


class SubjectItem extends StatelessWidget {
  final Subject subject;


  const SubjectItem({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Text('${subject.name['en']} (${subject.name['pl']})');
  }
}