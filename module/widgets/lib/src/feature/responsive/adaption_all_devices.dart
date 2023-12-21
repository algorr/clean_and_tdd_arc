import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

final class AdaptionAllDevices extends StatelessWidget {
  const AdaptionAllDevices(
      {super.key,
      required this.phone,
      required this.tablet,
      required this.desktop});

  final Widget phone;
  final Widget tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile) return phone;
    if (ResponsiveBreakpoints.of(context).isTablet) return tablet;
    if (ResponsiveBreakpoints.of(context).isDesktop) return desktop;
    return phone;
  }
}
