import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context);
    return Row(
      children: [
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.menu, color: colorTheme.primaryColor),
        ),
        SizedBox(width: 16),
        Text('Monitor', style: textTheme.displayMedium),
        Spacer(),
        Expanded(
          flex: 3,
          child: TextField(
            style: textTheme.bodyLarge,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: IconButton(
                onPressed: () => {},
                icon: Icon(Icons.search, color: colorTheme.primaryColor),
              ),
              hintText: 'Search',
              hintStyle: textTheme.bodyLarge,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        SizedBox(width: 16),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.bar_chart, color: colorTheme.primaryColor),
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.zoom_in_map, color: colorTheme.primaryColor),
        ),
      ],
    );
  }
}
