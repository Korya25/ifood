import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomVerticalList extends StatelessWidget {
  const CustomVerticalList({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.separatorHeight,
  });
  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;
  final double? separatorHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sh,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        itemCount: itemCount,
        itemBuilder: itemBuilder,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: separatorHeight ?? 10.h);
        },
      ),
    );
  }
}
