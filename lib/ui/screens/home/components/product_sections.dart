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
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "Newest Additions",
            ontap: () {},
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);
                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: 20),
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
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "Popular Products",
            ontap: () {},
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);
                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}
