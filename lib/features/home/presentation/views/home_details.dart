import 'package:flutter/material.dart';
import 'package:ifood/features/home/presentation/widgets/detail_header.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column(children: [DetailHeader()])),
    );
  }
}
