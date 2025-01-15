import 'package:bookly/core/helpers/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20.h,
          ),
          const Spacer(),
          IconButton(
            icon: Icon(
              Icons.search,
              size: 24.sp,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
