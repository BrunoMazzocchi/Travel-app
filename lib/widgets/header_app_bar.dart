import 'package:favorite_places/widgets/card_image_list.dart';
import 'package:favorite_places/widgets/gradient_back.dart';
import 'package:flutter/cupertino.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GradientBack(title: "Popular"),
        CardImageList()
      ],
    );
  }
}
