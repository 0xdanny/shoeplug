import 'package:flutter/material.dart';
import '../../../../core/models/product.dart';
import 'product_card.dart';
import 'section_title.dart';

class NewestAdditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SectionTitle(
            title: "Newest Additions",
            ontap: () {},
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  return ProductCard(product: demoProducts[index]);
                },
              ),
              const SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SectionTitle(
            title: "Popular Products",
            ontap: () {},
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular) {
                    return ProductCard(product: demoProducts[index]);
                  }
                  return const SizedBox.shrink();
                },
              ),
              const SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}
