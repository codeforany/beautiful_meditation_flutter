import 'package:flutter/material.dart';
import 'package:meditation/common/color_extension.dart';

class SelectTabButton extends StatelessWidget {
  final String title;
  final bool isSelect;
  final VoidCallback onPressed;

  const SelectTabButton(
      {super.key,
      required this.title,
      required this.isSelect,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                  color: isSelect ? TColor.primary : TColor.secondaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 35),
              width: 50,
              height: 2,
              color: isSelect ? TColor.primary : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
