import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/constants/app_colors.dart';

import 'package:ifood/features/home/presentation/widgets/home_header_content.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.27.sh,
      decoration: headerBackground(),
      padding: EdgeInsets.all(20),

      child: HomeHeaderContent(
        imageUrl:
            'https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=',
        userName: 'Mahmoud',
      ),
    );
  }

  BoxDecoration headerBackground() {
    return BoxDecoration(
      color: AppColors.primaryGreen,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40.r),
        bottomRight: Radius.circular(40.r),
      ),
    );
  }
}
