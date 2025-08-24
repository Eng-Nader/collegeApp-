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
      decoration: BoxDecoration(
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
            icon: Icon(
              Icons.remove,
              size: 30,
            ),
          ),
          Text(
            '$productMount',
            style: TextStyle(fontSize: 25),
          ),
          IconButton(
            onPressed: addProduct,
            icon: Icon(
              Icons.add,
              size: 30,
            ),
          ), 
        ],
      ),
    );
  }
}
