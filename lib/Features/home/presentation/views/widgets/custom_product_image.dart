import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomProducImage extends StatelessWidget {
  const CustomProducImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: "https://i.ibb.co/Df6LgkLK/logo2.png",
      width: 100,
      height: 100,
      fit: BoxFit.fill,
    );
  }
}
