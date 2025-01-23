import 'package:bookly/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

void custonSnackBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: AppTextStyles.textStyle14Normal,
      ),
    ),
  );
}
