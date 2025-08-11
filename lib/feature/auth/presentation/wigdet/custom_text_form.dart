import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextForm extends StatefulWidget {
  CustomTextForm({
    super.key,
    this.controller,
    this.isSuffix,
    this.validator,
    required this.labelText,
    this.keyboardType,
    this.isPass,
  });
  String? labelText;
  TextEditingController? controller;
  String? Function(String?)? validator;
  bool? isSuffix = false;
  TextInputType? keyboardType;
  bool? isPass = false;

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  bool isVisibilty = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        obscureText: widget.isPass == true ? isVisibilty : false,
        controller: widget.controller,
        validator: widget.validator,
        keyboardType: widget.keyboardType,

        decoration: InputDecoration(
          suffixIcon:
              widget.isSuffix == true
                  ? IconButton(
                    onPressed: () {
                      setState(() {
                        isVisibilty = !isVisibilty;
                      });
                    },
                    icon:
                        isVisibilty == true
                            ? Icon(Icons.visibility_off_rounded)
                            : Icon(Icons.visibility),
                  )
                  : null,
          labelText: widget.labelText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
    );
  }
}
