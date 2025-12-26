import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/extension/extensions.dart';

class LoadingGrid extends StatelessWidget {
  final double height;
  final int crossAxis;
  final bool useShadow;
  final int length;

  const LoadingGrid({
    super.key,
    this.height = 180,
    this.crossAxis = 3,
    this.useShadow = true,
    this.length = 6,
  });

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.count(
      crossAxisCount: crossAxis,
      padding: const EdgeInsets.all(0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: length,
      shrinkWrap: true,
      // staggeredTileBuilder: (int index) =>
      //   const StaggeredTile.fit(1),
      mainAxisSpacing: 15,
      crossAxisSpacing: 20,
      // add some space
      itemBuilder: (context, index) {
        return Container(
          height: AppSetting.setHeight(height),
          decoration: BoxDecoration(
            color: context.greyDarkColor.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(5),
            boxShadow: useShadow
                ? [
                    BoxShadow(
                      color: Colors.black12.withValues(alpha: 0.03),
                      blurRadius: 3,
                      spreadRadius: 2,
                      offset: const Offset(2, 3),
                    )
                  ]
                : null,
          ),
        );
      },
    );
  }
}

class LoadingGridMini extends StatelessWidget {
  final int length;
  final int crossCount;
  final double? height;

  const LoadingGridMini({
    super.key,
    required this.length,
    this.crossCount = 4,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.count(
      crossAxisCount: crossCount,
      padding: const EdgeInsets.all(0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: length,
      shrinkWrap: true,
      mainAxisSpacing: 15,
      crossAxisSpacing: 20,
      // add some space
      itemBuilder: (context, index) {
        return Container(
          height: height ?? AppSetting.setHeight(180),
          decoration: BoxDecoration(
            color: context.greyDarkColor.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(5),
          ),
        );
      },
    );
  }
}