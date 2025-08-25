import 'package:college_app/Feature/favourite/presentation/widget/add_remove_product.dart';
import 'package:college_app/Feature/favourite/presentation/widget/add_to_card_bottom.dart';
import 'package:college_app/Feature/favourite/presentation/widget/color_item.dart';
import 'package:college_app/Feature/favourite/presentation/widget/size_item.dart';
import 'package:college_app/core/widget/rating.dart';
import 'package:flutter/material.dart';

class ShowBottomDetials extends StatelessWidget {
  const ShowBottomDetials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        height: 400,
        decoration: const BoxDecoration(
          color: Color(0xfff4f5f7),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: const Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: .8,
                        child: Text(
                          'Famale Style',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Rating(),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    'Classic Blazar',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    'Product Details',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Opacity(
                    opacity: .4,
                    child: Text(
                      'cotton sweat shirt with a text point',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        'Quality',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      AddAndRmoveProduct(),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    thickness: 2,
                    endIndent: .4,
                    indent: .4,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ColorItem(),
                  SizedBox(
                    height: 10,
                  ),
                  SizeItem(),
                ],
              ),
            ),
            AddToCardButtom(),
          ],
        ),
      ),
    );
  }
}
