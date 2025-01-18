import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: CustomBookDetailsAppBar(),
        )),
      ],
    );
  }
}
