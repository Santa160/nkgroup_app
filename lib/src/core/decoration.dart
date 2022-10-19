import 'package:flutter/material.dart';

InputDecoration inputDecoaration({String? lable, required String hint}) {
  return InputDecoration(
    label: lable != null ? Text(lable) : null,
    labelStyle: const TextStyle(color: Colors.black),
    // prefixIcon: Icon(Icons.email),
    filled: true,
    fillColor: Colors.white,
    hintText: hint,
    hintStyle: const TextStyle(color: Colors.red),
    contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  );
}
