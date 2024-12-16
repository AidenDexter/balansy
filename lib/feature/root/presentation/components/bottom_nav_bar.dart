import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/resources/assets.gen.dart';
import '../bottom_navigation_scope.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  const BottomNavBar({
    required this.currentIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    const navBarHeight = Sizes.p64; //TODO: как избавиться от необходимости вручную задавать высоту нижнего бара?
    return Stack(
      children: [
        Container(
          height: navBarHeight,
          decoration: const BoxDecoration(color: Colors.amber),
          padding: EdgeInsets.only(bottom: bottomPadding),
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavBarItem(
                onTap: (index) => BottomNavigationScope.change(context, index),
                index: 0,
                currentIndex: currentIndex,
                asset: Assets.navBar.home,
              ),
              _NavBarItem(
                onTap: (index) => BottomNavigationScope.change(context, index),
                index: 1,
                currentIndex: currentIndex,
                asset: Assets.navBar.insight,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem({
    required this.index,
    required this.currentIndex,
    required this.onTap,
    required this.asset,
  });

  final int index;
  final int currentIndex;
  final SvgGenImage asset;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    // final colors = context.theme.commonColors;
    // final isSelected = index == currentIndex;
    return InkWell(
      onTap: () => onTap(index),
      borderRadius: const BorderRadius.all(Radius.circular(100)),
      child: Ink(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          // color: isSelected ? colors.green10 : colors.neutralgrey3,
        ),
        // padding: const EdgeInsets.all(),
        child: asset.svg(
            // colorFilter: ColorFilter.mode(
            // isSelected ? colors.green100 : colors.darkGrey30,
            // BlendMode.srcIn,
            // ),
            ),
      ),
    );
  }
}
