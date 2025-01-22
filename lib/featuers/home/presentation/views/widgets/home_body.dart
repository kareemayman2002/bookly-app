import 'package:booking_app/featuers/home/presentation/views/widgets/custom_appbar.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/list_catogry.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/list_seller.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/text_best_seller.dart';
import 'package:flutter/material.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomAppBar()),
        SliverToBoxAdapter(child: ListCatogry()),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        SliverToBoxAdapter(child: TextBestSeller()),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        ListSeller()
      ],
    );
  }
}
