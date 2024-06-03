import 'package:flutter/material.dart';

import '../components/custom_text_form_field.dart';

TextEditingController restNameController = TextEditingController();
GlobalKey<FormState> form = GlobalKey();

void showAlertDialog({
  required BuildContext context,
  required Function() onTap,
}) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Change Name restaurant",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          content: Form(
            key: form,
            child: CustomTextFormField(
              hintText: 'Enter Restaurant Name ',
              controller: restNameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter restaurant Name';
                }
                return null;
              },
              iconData: Icons.edit,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: 130,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFA5926),
                ),
                child: const Text(
                  'Change Name',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 80,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFA5926),
                ),
                child: const Text(
                  'Close',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        );
      });
}
