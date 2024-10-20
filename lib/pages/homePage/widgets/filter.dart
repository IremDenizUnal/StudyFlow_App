import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  final String label;
  Filter(this.label);

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0XFFF57C00),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      label: Text(label),
      onSelected: (bool value) {},
    );
  }
}
