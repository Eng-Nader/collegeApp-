import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';

class AddToCardButtom extends StatelessWidget {
  const AddToCardButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: BoxBorder.all(
                  width: 2,
                  color: primaryColor,
                ),
              ),
              child: const Icon(
                Icons.favorite_border,
                size: 30,
                color: primaryColor,
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(
                    Radius.circular(16),
                  ),
                ),
                minimumSize: const Size(200, 48),
              ),
              onPressed: () {},
              child: const Text(
                'Add To Card',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
