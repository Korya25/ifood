import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ifood/core/constants/app_assets.dart';
import 'package:ifood/core/resources/app_text_styles.dart';

class DetailCondtionAction extends StatelessWidget {
  const DetailCondtionAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 30.w,
      children: [
        _builditem('Safe', AppAssets.formkitHappy),
        _builditem('Safe', AppAssets.outlineGood),
        _builditem('Safe', AppAssets.phPlant),
      ],
    );
  }

  Widget _builditem(String title, String svg) {
    return Row(
      spacing: 10.w,
      children: [
        SvgPicture.asset(svg),
        Text(
          title,
          style: AppTextStyles.inter12Blackw600,
        ),
      ],
    );
  }
}
