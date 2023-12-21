import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

final class AdaptionAllMobiles extends StatelessWidget {
  const AdaptionAllMobiles({
    super.key,
    required this.phone,
    required this.tablet,
  });

  final Widget phone;
  final Widget tablet;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile) return phone;
    if (ResponsiveBreakpoints.of(context).isTablet) return tablet;
    return phone;
  }
}
