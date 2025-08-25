import 'package:college_app/Feature/auth/Presentation/widget/address_text_filed.dart';
import 'package:college_app/Feature/auth/Presentation/widget/custom_app_bar.dart';
import 'package:college_app/Feature/auth/Presentation/widget/custom_button.dart';

import 'package:flutter/material.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  final List<String> addressList = const [
    'Title',
    'Address',
    'Building No',
    'Floor No',
    'Apartment No',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            CustomAppBar(
              title: 'Add Address',
              onPressed: () => Navigator.pop(context),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: addressList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: AddressTextFiled(
                    hint: addressList[index],
                    label: addressList[index],
                  ),
                );
              },
            ),
            CustomButton(
              title: 'Save',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
