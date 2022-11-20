import 'package:favorite_places/navigation.dart';
import 'package:favorite_places/place/ui/widgets/card_image_list.dart';
import 'package:favorite_places/widgets/gradient_back.dart';
import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  void goBack() {
    MaterialPageRoute(builder: (context) => const Navigation());
    (Route<dynamic> route) => false;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GradientBack(
          title: "Popular",
          gradientHeight: 250.0,
        ),
        CardImageList(),
      ],
    );
  }
}
