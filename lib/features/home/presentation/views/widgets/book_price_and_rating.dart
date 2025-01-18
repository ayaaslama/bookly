import 'package:bookly/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookPriceAndRating extends StatelessWidget {
  const BookPriceAndRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '4.5 \$',
          style: AppTextStyles.textStyle20Normal
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4f)),
        Text(
          '4.8',
          style: AppTextStyles.textStyle16Medium,
        ),
        Text(
          '(1,200)',
          style: AppTextStyles.textStyle14Normal
              .copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
