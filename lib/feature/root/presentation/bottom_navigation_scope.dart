import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bottom_navigation_bloc.dart';

class BottomNavigationScope extends StatelessWidget {
  final Widget child;

  const BottomNavigationScope({
    required this.child,
    super.key,
  });

  static void change(BuildContext context, int pageIndex) =>
      context.read<BottomNavigationBloc>().add(BottomNavigationEvent.changed(pageIndex));

  @override
  Widget build(BuildContext context) => BlocProvider<BottomNavigationBloc>(
        create: (context) => BottomNavigationBloc(),
        child: child,
      );
}
