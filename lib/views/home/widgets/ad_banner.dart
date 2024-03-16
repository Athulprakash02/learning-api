
import 'package:flutter/material.dart';

class AdBannerWidget extends StatelessWidget {
  const AdBannerWidget({
    super.key,
    required this.imageUrl,
  });

  
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: NetworkImage(imageUrl,),fit: BoxFit.cover,)
            ),
            
        );
  }
}
