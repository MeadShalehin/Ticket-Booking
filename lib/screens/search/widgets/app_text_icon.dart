import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  const AppTextIcon({super.key, required this.icon, required this.text});

  get iconColor => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal:12) ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.textColor2
      ),
      child: Row(
        children: [
         Icon(icon, color: AppStyles.iconColor),
         const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(text, style: AppStyles.textStyle,),
          )

        ],
      ),
    );
  }
}
