import 'package:flutter/material.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 32),
            ),
            NewsListViewBuilder(
              category: 'general',
            )
          ],
        ),
      ),
    ));
  }
}
