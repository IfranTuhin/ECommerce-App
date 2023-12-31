import 'package:ecommerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges.widget.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 350,
          child: Stack(
            children: [
              // Background custom shape
              Positioned(
                top: -130,
                right: -230,
                child: TCircularContainer(backgroundColor: TColors.white.withOpacity(0.1)),
              ),
              Positioned(
                top: 90,
                right: -270,
                child: TCircularContainer(backgroundColor: TColors.white.withOpacity(0.1)),
              ),
              // Widgets
              child,
            ],
          ),
        ),
      ),
    );
  }
}
