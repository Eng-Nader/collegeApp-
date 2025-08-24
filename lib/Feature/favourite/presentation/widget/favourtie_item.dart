import 'package:college_app/constant.dart';
import 'package:college_app/core/assets/app_assets.dart';
import 'package:flutter/material.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                AppAssets.salesMan,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 5,
                left: 10,
                child: CircleAvatar(
                  child: Icon(
                    Icons.favorite,
                    color: primaryColor,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'classic blazar',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text(
                '4.9',
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
          Align(
            alignment: Alignment(.9, 0),
            child: Text(
              r'$19.99',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
