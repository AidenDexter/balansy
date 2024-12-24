part of '../app_router.dart';

final _statisticRoutes = [
  GoRoute(
    path: StatisticRoutes.statistic.path,
    builder: (_, state) => const StatisticScreen(),
  ),
];
