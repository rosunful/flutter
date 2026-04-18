import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final String name;
  final Icon? icon;
  final Color color;
  final VoidCallback? callback;

  // this is passed from the main class i.e (day9_cut_btn_main_file)
  // and gives to the attributes !
  const CustomWidget({
    super.key,
    required this.name,
    this.icon,
    this.color = Colors.blue,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // this is the designing part of the button . dattebayo !!
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),

      // this is the button function to peform operation when we click it !
      onPressed: () {
        callback!();
      },

      // grabs the value from the attributes !!
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [        
          if (icon != null) ...[
            icon!, // show icon only if it exists
            const SizedBox(width: 8),
          ],
          Text(name),
        ],
      ),
    );
  }
}
