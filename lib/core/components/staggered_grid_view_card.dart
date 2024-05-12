import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

//Bu widget, farklı boyutlarda ve yerleşimlerde öğeleri düzenlemek için Flutter Staggered Grid View paketini kullanır.
class StaggeredGridViewCard extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  final ScrollPhysics? physics;
  final double? crossAxisSpacing;
  final double? mainAxisSpacing;
  const StaggeredGridViewCard({
    super.key,
    required this.itemCount,
    this.physics,
    required this.itemBuilder,
    this.crossAxisSpacing,
    this.mainAxisSpacing,
  });
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        crossAxisSpacing: crossAxisSpacing ?? 5,
        mainAxisSpacing: mainAxisSpacing ?? 5,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        // padding: EdgeInsets.all(20),
        crossAxisCount: 2,
        itemCount: itemCount,
        itemBuilder: itemBuilder);
  }
}
