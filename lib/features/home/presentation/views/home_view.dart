import 'package:flutter/material.dart';
import 'package:ifood/core/constants/app_colors.dart';
import 'package:ifood/features/home/presentation/widgets/home_body.dart';
import 'package:ifood/features/home/presentation/widgets/home_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryWhite,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: HomeHeader()),
            SliverToBoxAdapter(child: HomeBody()),
          ],
        ),
      ),
    );
  }
}
