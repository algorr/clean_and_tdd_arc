import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/src/package/custom_image/custom_mem_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(
      {super.key,
      this.imageUrl,
      this.emptyWidget,
      this.boxFit = BoxFit.fill,
      this.customMemCache = const CustomMemCache(width: 200, height: 200),
      this.loadingWidget,
      this.size});
  final String? imageUrl;
  final Widget? emptyWidget;
  final Widget? loadingWidget;
  final BoxFit? boxFit;
  final CustomMemCache customMemCache;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || imageUrl!.isEmpty) {
      return emptyWidget ?? const SizedBox();
    }
    return CachedNetworkImage(
      imageUrl: imageUrl!,
      errorWidget: (context, url, error) => emptyWidget ?? const SizedBox(),
      fit: boxFit,
      width: size?.width,
      height: size?.height,
      errorListener: (value) {
        if (kDebugMode) debugPrint('Error Value : $value');
      },
      memCacheHeight: customMemCache.height,
      memCacheWidth: customMemCache.width,
      progressIndicatorBuilder: (context, url, progress) {
        return Center(
            child: loadingWidget ?? const CircularProgressIndicator.adaptive());
      },
    );
  }
}
