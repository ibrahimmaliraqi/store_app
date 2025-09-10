import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:store/core/utils/assets.dart';

class CustomProducImage extends StatelessWidget {
  const CustomProducImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / .85,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(20),
        child: CachedNetworkImage(
          errorWidget: (context, url, error) {
            return ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(50),
              child: Image.asset(Assets.errImage),
            );
          },
          imageUrl:
              "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
