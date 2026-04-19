import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonAgain extends StatelessWidget {
  final String name;
  final Icon? icon;
  final Color? color;
  final VoidCallback? message;

  const CustomButtonAgain({
    super.key,
    required this.name,
    this.icon,
    this.color = Colors.green,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        elevation: 9,
        shadowColor: Colors.green,
        padding: EdgeInsetsGeometry.all(5),
        
      ),

      onPressed: () {
        message;
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon!=null) ...[

            icon!,
            const SizedBox(width: 8),
            
          ],
          Text(name),
          
        ],
      ),
    );
  }
}
