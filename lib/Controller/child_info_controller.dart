// Define a custom Form widget.
import 'package:flutter/material.dart';

class ChildInfoForm extends StatefulWidget {
  const ChildInfoForm({super.key});

  @override
  State<ChildInfoForm> createState() => _ChildInfoFormState();
}

class _ChildInfoFormState extends State<ChildInfoForm> {
  
  final childInfoController = TextEditingController();

  @override
  void dispose() {
    childInfoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Fill this out in the next step.
  }
}