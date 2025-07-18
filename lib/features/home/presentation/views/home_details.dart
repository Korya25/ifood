import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/features/home/presentation/widgets/detail_body.dart';
import 'package:ifood/features/home/presentation/widgets/detail_header.dart';
import 'package:ifood/features/home/presentation/widgets/similar_products.dart';

class HomeDetailsView extends StatelessWidget {
  const HomeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 8.h,
          children: [
            DetailHeader(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: DetailContent().animate().fadeIn(delay: 150.ms),
            ),
            SimilarProducts(),

            // Button
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
