import 'package:flutter/cupertino.dart';

class SpaceWidget extends StatelessWidget {
  final double height;
  const SpaceWidget({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
