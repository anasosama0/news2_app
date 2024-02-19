import 'package:flutter/material.dart';
import 'package:news2_app/models/category_model.dart';
import 'package:news2_app/views/category_view.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
   return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(category.image))),
          child: Center(
            child: Text(
              category.categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
