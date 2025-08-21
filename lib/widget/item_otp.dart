import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ItemOtp extends StatelessWidget {
  const ItemOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      keyboardType: TextInputType.number,
      backgroundColor: Colors.transparent,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      appContext: context,
      enableActiveFill: true,
      length: 4,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        fieldHeight: 64,
        fieldWidth: 64,
        activeColor: primaryColor,
        inactiveColor: Colors.transparent,
        selectedColor: primaryColor,
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        selectedFillColor: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
