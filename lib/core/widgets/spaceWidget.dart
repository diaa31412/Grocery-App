import 'package:flutter/material.dart';
import 'package:frontend/core/utils/sizeConfig.dart';

class HorizintalBox extends StatelessWidget {
  final double? value;
  const HorizintalBox({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: SizeConfig.defaultSize! * value!);
  }
}
