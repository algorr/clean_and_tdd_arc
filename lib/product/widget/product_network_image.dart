import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

/// Product specific network image with lottie
class ProductNetworkImage extends StatelessWidget {
  ///constructor
  const ProductNetworkImage({required this.url, super.key});

  final String? url;

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      imageUrl: url,
      loadingWidget: Assets.lotties.lottieCode.lottie(),
    );
  }
}
