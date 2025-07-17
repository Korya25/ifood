import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:ifood/core/resources/app_text_styles.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({super.key});

  final List<Map<String, dynamic>> steps = const [
    {
      'count': 1,
      'title':
          'Make your own dough. Mix it up in the morning (or the night before) and it will be waiting for you come dinnertime.',
    },
    {
      'count': 2,
      'title':
          'Keep the sauce and toppings simple. A simple, no-cook red sauce is best. To ensure the crust cooks through, keep the toppings to just a handful.',
    },
    {
      'count': 3,
      'title':
          'Bake it hot. Crank the oven to its highest setting and let it heat for at least half an hour. Then, bake the pizza on parchment paper (either on a pizza stone or baking sheet) for about 10 minutes.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(steps.length, (index) {
        final item = steps[index];
        return _buildItem(count: item['count'], title: item['title']);
      }),
    );
  }

  Widget _buildItem({required int count, required String title}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$count.', style: AppTextStyles.inter14Grey500),
          SizedBox(width: 8.w),
          Expanded(
            child: ReadMoreText(
              title,
              trimLines: 5,
              trimMode: TrimMode.Line,
              trimCollapsedText: ' Read more',
              trimExpandedText: ' Show less',
              moreStyle: AppTextStyles.inter14Grey500.copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              lessStyle: AppTextStyles.inter14Grey500.copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              style: AppTextStyles.inter14Grey500,
            ),
          ),
        ],
      ),
    );
  }
}
