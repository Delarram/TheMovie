import 'package:flutter/material.dart';


class MyRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String leading;
  final ValueChanged<T?> onChanged;

  const MyRadioListTile({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.leading,

  });

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        height: 56,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            _customRadioButton,
            const SizedBox(width: 12),

          ],
        ),
      ),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
        height: 49,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : null,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey[300]!,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Icon(Icons.radio_button_checked,color: isSelected? Colors.amber : Colors.grey[100],),SizedBox(width: 10,),
            Text(
              leading,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey[600]!,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ],
        )
    );
  }
}