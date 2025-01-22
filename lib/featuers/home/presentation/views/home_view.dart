import 'package:booking_app/featuers/home/presentation/views/widgets/catogry_seller.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/custom_appbar.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/list_catogry.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/list_seller.dart';
import 'package:booking_app/featuers/home/presentation/views/widgets/text_best_seller.dart';
import 'package:flutter/material.dart';

class HomeView
 extends StatelessWidget {
  const HomeView
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomAppBar()),
            SliverToBoxAdapter(child: ListCatogry()),
            SliverToBoxAdapter(child: TextBestSeller()),
            ListSeller()
          ],
        ),
      ),
    );
  }
}