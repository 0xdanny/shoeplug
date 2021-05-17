import 'package:flutter/material.dart';
import '../../../theme/colors.dart';
import '../../../../core/models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRatio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: (width),
        child: GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.lightBlue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: product.id.toString(),
                    child: Image.asset(product.images[0]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\N${product.price}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.skyBlue,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: product.isFavourite ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
