import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JustTextField extends StatelessWidget {
  TextEditingController? controller;
  String? labelText;
  String? hintText;
  String? prefixText;
  String? suffixText;
  int? minLines;
  int? maxLines;
  int? maxLength;
  TextAlign textAlign;
  TextInputType? inputType;
  List<TextInputFormatter>? inputFormatters;
  bool readOnly;
  bool enabled;
  bool border;
  Function()? onTap;
  Function(String value)? onChanged;
  bool capitalize;

  JustTextField(
      {Key? key,
        this.controller,
        this.labelText,
        this.hintText,
        this.prefixText,
        this.suffixText,
        this.minLines,
        this.maxLines,
        this.maxLength,
        this.textAlign = TextAlign.start,
        this.inputType,
        this.inputFormatters,
        this.readOnly = false,
        this.enabled = true,
        this.border = true,
        this.onTap,
        this.onChanged,
        this.capitalize = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      onChanged: (value) {
        if (onChanged != null) {
          onChanged!(value);
        }
      },
      textCapitalization: capitalize
          ? TextCapitalization.characters
          : TextCapitalization.none,
      controller: controller,
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      textAlign: textAlign,
      keyboardType: inputType,
      inputFormatters: inputFormatters,
      readOnly: readOnly,
      enabled: enabled,
      decoration: InputDecoration(
          border: border ? const OutlineInputBorder() : null,
          labelText: labelText,
          hintText: hintText,
          prefixText: prefixText,
          suffixText: suffixText),
    );
  }
}