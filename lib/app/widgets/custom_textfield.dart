import 'package:flutter/material.dart';
import 'package:sistem_layanan_kesehatan/app/widgets/custom_text.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key, required this.label, required this.controller, this.textInputType, this.isPassword,
  });

  final String label;
  final TextEditingController controller;
  final TextInputType? textInputType;
  final bool? isPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: label, fontSize: 16, fontWeight: FontWeight.bold, fontColor: Colors.black26,),
        const SizedBox(height: 5),
        TextFormField(
          controller: controller,
          keyboardType: textInputType,
          obscureText: isPassword ?? false,
          style: const TextStyle(color: Colors.black), // Changed text color
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.all(Radius.circular(60)), // Reduced the radius
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "";
            }

            return null;
          },
        ),
      ],
    );
  }
}