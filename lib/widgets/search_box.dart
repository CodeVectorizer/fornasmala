import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox(
      {Key? key,
      this.onChanged,
      this.search,
      this.color = Colors.grey,
      this.textColor = Colors.grey,
      this.valueColor = Colors.grey,
      this.label = 'Search',
      this.leadIcon = Icons.search,
      this.margin = const EdgeInsets.only(
        top: 10,
      ),
      this.padding = const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20 / 14, // 5 top and bottom
      ),
      this.enable = true,
      this.onTap})
      : super(key: key);

  final ValueChanged? onChanged;
  final TextEditingController? search;
  final Color color;
  final Color textColor;
  final Color valueColor;
  final String label;
  final IconData leadIcon;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Function()? onTap;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: color.withOpacity(0.4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        onChanged: onChanged,
        controller: search,
        enabled: enable,
        onTap: onTap,
        style: const TextStyle(color: Colors.black54),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          icon: Icon(
            leadIcon,
            color: textColor,
          ),
          hintText: label,
          hintStyle: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
