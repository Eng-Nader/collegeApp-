import 'package:flutter/material.dart';

class AddressTextFiled extends StatelessWidget {
  const AddressTextFiled({
    super.key,
    required this.hint,
    required this.label,
  });
  final String hint;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hint: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              hint,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
        label: Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
