import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ifood/core/resources/app_routes.dart';
import 'package:ifood/core/resources/app_text_styles.dart';
import 'package:ifood/core/presentation/widgets/custom_vertical_list.dart';
import 'package:ifood/core/presentation/widgets/custom_horizontal_list.dart';
import 'package:ifood/features/home/presentation/widgets/menu_item.dart';
import 'package:ifood/features/home/presentation/widgets/product_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text('Menu', style: AppTextStyles.inter18black700),
        ),

        // menu items
        CustomHorizontalList(
          itemBuilder: (context, index) {
            return MenuItem(index: index);
          },
        ),

        // Products
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: CustomVerticalList(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoutes.homeDetails);
                },
                child: ProductCard(
                  imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyLCWEbWCyzRRiQoUBSLcY52FedzxjpJn2fA&s',
                  title: 'Donuts',
                  category: 'Snack',
                  originalPrice: 8.2,
                  discountedPrice: 6.4,
                  rating: 5.0,
                  isFavorite: true,
                  onFavoritePressed: () {
                    //print('Favorite pressed');
                  },
                  onCartPressed: () {
                 //   print('Cart pressed');
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
