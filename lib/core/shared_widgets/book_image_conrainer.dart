import 'package:bookly/core/helpers/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookImageContainer extends StatelessWidget {
  const BookImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(16.r),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AssetsData.testImage,
            ),
          ),
        ),
      ),
    );
  }
}
