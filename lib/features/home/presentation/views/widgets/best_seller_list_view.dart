import 'package:bookly/core/shared_widgets/custom_error.dart';
import 'package:bookly/core/shared_widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/cubit/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
              childCount: state.books.length,
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomError(
              errMessage: state.errMessage,
            ),
          );
        } else {
          return SliverToBoxAdapter(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
