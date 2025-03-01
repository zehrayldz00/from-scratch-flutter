import 'package:flutter/material.dart';

class ColorCardWidget extends StatefulWidget {
  final ValueChanged<Color?> onChanged;
  const ColorCardWidget({super.key, required this.onChanged});

  @override
  State<ColorCardWidget> createState() => _ColorCardWidgetState();
}

class _ColorCardWidgetState extends State<ColorCardWidget> {
  Color color = Colors.white24;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      margin: EdgeInsets.all(10),
      child: ListTile(
        trailing: DropdownButton<Color>(
          onChanged:(color){
            setState(() {
              this.color = color!;
            });
            widget.onChanged(color);
          },

          items: [
            DropdownMenuItem(
              value: Colors.red,
              child: Text("Red"),
            ),
            DropdownMenuItem(
              value: Colors.green,
              child: Text("Green"),
            ),
            DropdownMenuItem(
              value: Colors.pink,
              child: Text("Pink"),
            ),
          ],
        ),
        title: Text("Color changes"),
        subtitle: Text("$color"),
      ),
    );
  }
}
