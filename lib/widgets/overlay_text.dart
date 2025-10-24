import 'package:flutter/material.dart';

class OverlayText extends StatelessWidget {
  const OverlayText({super.key, required this.isTV, required this.size});

  final Size size;
  final bool isTV;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          'Developed by Smoqdev',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: isTV ? 48 : size.width * 0.06,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
