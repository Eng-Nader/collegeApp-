import 'package:college_app/widget/dialog_body.dart';
import 'package:flutter/material.dart';

void showSucessDiaglog({
  required BuildContext context,
  required String content,
  required String titelButtom,
  required String subContent,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return DialogBody(
        content: content,
        titelButtom: titelButtom,
        subContent: subContent,
      );
    },
  );
}
