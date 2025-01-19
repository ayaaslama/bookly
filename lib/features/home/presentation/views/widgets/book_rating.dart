import 'package:bookly/core/helpers/spacing.dart';
import 'package:bookly/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    MainAxisAlignment.center;
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, size: 14.sp, color: Color(0xffFFDD4f)),
        horizontalSpace(6.3),
        Text(
          '4.8',
          style: AppTextStyles.textStyle16Medium,
        ),
        horizontalSpace(5),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(1,200)',
            style: AppTextStyles.textStyle14Normal.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
