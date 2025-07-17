import 'package:flutter/material.dart';
import 'package:ifood/features/home/presentation/widgets/detail_condtion_action.dart';
import 'package:ifood/features/home/presentation/widgets/detail_description.dart';

import 'package:ifood/features/home/presentation/widgets/detail_main_content.dart';

class DetailContent extends StatelessWidget {
  const DetailContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        DetailMainContent(),
        DetailCondtionAction(),
        DetailDescription(),
      ],
    );
  }
}
