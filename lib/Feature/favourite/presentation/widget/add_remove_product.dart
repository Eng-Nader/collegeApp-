import 'package:flutter/material.dart';

class AddAndRmoveProduct extends StatefulWidget {
  const AddAndRmoveProduct({
    super.key,
  });

  @override
  State<AddAndRmoveProduct> createState() => _AddAndRmoveProductState();
}

class _AddAndRmoveProductState extends State<AddAndRmoveProduct> {
  int productMount = 0;
  void addProduct() {
    setState(() {
      productMount++;
    });
  }

  void removeProduct() {
    setState(() {
      productMount--;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: removeProduct,
            icon: const Icon(
              Icons.remove,
              size: 30,
            ),
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            transitionBuilder: (child, animation) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            },
            child: Text(
              key: ValueKey(productMount),
              productMount.toString(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            onPressed: addProduct,
            icon: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
