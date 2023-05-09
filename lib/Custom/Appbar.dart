// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
    required this.leftIcon,
    required this.rightIcon,
    this.leftCallBack,
  }) : super(key: key);
  final IconData leftIcon;
  final IconData rightIcon;
  final Function? leftCallBack;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          left: 14,
          right: 14,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _IconButton(leftIcon),
            const SizedBox(
              child: Text(
                "data",
                style: TextStyle(fontSize: 24),
              ),
            ),
            _IconButton(rightIcon),
          ],
        ),
      ),
    );
  }
}

Widget _IconButton(IconData icon) {
  return Container(
    padding: const EdgeInsets.all(8),
    child: Icon(
      icon,
      size: 34,
    ),
  );
}
