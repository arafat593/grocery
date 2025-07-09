import 'package:flutter/cupertino.dart';

class BackgroundImage extends StatelessWidget {
  final String backgroundImage;
  final Widget child;
  const BackgroundImage({super.key, required this.backgroundImage, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(backgroundImage,fit: BoxFit.cover,),
        child,
      ],
    );
  }
}
