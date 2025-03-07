import 'package:bookly/core/helpers/spacing.dart';
import 'package:bookly/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookPageCount extends StatelessWidget {
  const BookPageCount({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.pageCount,
  });
  final MainAxisAlignment mainAxisAlignment;
  final int pageCount;
  @override
  Widget build(BuildContext context) {
    MainAxisAlignment.center;
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.bookOpen, size: 14.sp, color: Color(0xffFFDD4f)),
        horizontalSpace(6.3),
        Opacity(
          opacity: 0.8,
          child: Text(
            pageCount.toString(),
            style: AppTextStyles.textStyle14Normal.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
