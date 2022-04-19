import 'package:flutter/material.dart';
import 'package:garden/theme/main_theme.dart';

class GardenForm extends StatelessWidget {
  const GardenForm({
    Key? key,
    this.formKey,
    this.formFieldKey,
    required this.controller,
    required this.onChanged,
    required this.label,
    this.focus,
  }) : super(key: key);

  final Key? formKey;
  final Key? formFieldKey;
  final TextEditingController controller;
  final FocusNode? focus;
  final Function(String)? onChanged;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        key: formFieldKey,
        style: TextStyle(
          color: context.theme.headlineTextColor,
        ),
        controller: controller,
        decoration: InputDecoration(
          labelStyle: TextStyle(
            color: context.theme.headlineTextColor,
          ),
          labelText: label,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.accentColor,
            ),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
