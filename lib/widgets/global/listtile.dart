import 'package:flutter/material.dart';

class Listtilewidget extends StatelessWidget {
  final String title;
  final String subtitile;


  const Listtilewidget({
    super.key,
    required this.title, required this.subtitile,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitile),
    );
  }
}
