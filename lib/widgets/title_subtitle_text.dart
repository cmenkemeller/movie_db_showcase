import 'package:equifax_movie_db/core/mdb_theme.dart';
import 'package:flutter/material.dart';

class TitleSubtitleText extends StatelessWidget {
  final String title;
  final String subtitle;
  final int? subtitleMaxLines;
  const TitleSubtitleText(
      {required this.title,
      required this.subtitle,
      this.subtitleMaxLines,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.bodyLarge,
          maxLines: 1,
        ),
        Text(
          subtitle,
          style: context.textTheme.bodyMedium,
          maxLines: subtitleMaxLines,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
