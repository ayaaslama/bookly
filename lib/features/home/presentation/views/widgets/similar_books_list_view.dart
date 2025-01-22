import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/book_image_conrainer.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0.w),
            child: BookImageContainer(
              imageUrl:
                  'https://i0.wp.com/thepythoncodingbook.com/wp-content/uploads/2024/03/FRONT-for-ebook.jpg?resize=1200%2C1478&ssl=1',
            ),
          );
        },
      ),
    );
  }
}
