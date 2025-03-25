import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Text("log", style: textTheme.displayLarge),
              ),
            ),
            DrawerListTitle(
              title: "Home",
              svgSrc: "assets/icons/home.svg",
              onTap: () => {},
            ),
            DrawerListTitle(
              title: "Settings",
              svgSrc: "assets/icons/settings.svg",
              onTap: () => {},
            ),
            DrawerListTitle(
              title: "Profile",
              svgSrc: "assets/icons/person.svg",
              onTap: () => {},
            ),
            DrawerListTitle(
              title: "Share",
              svgSrc: "assets/icons/share.svg",
              onTap: () => {},
            ),
            DrawerListTitle(
              title: "Logout",
              svgSrc: "assets/icons/logout.svg",
              onTap: () => {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTitle extends StatelessWidget {
  final String title, svgSrc;
  final VoidCallback onTap;

  const DrawerListTitle({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context);
    return ListTile(
      onTap: onTap,
      title: Text(title),
      leading: SvgPicture.asset(
        svgSrc,
        height: 24,
        colorFilter: ColorFilter.mode(colorTheme.primaryColor, BlendMode.srcIn),
      ),
    );
  }
}
