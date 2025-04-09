import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:padel_app/features/home/presentation/pages/home_page.dart';
import 'package:padel_app/features/tournament/presentation/pages/tournament_home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/material.dart';

part 'skeleton_providers.g.dart';

@riverpod
class SkeletonPageIndex extends _$SkeletonPageIndex {
  @override
  int build() => 0;

  void setPageIndex(int newPageIndex){
    state = newPageIndex;
  }
}

@riverpod
List<Widget> skeletonPages(Ref ref) {
  return [
    const HomePage(),
    const TournamentHomePage(),
    Container(color: Colors.purple,),
    Container(color: Colors.orange,),
  ];
}

@riverpod
Widget curretSkeletonPage(Ref ref) {
  final skeletonPages = ref.watch(skeletonPagesProvider);
  final skeletonPageIndex = ref.watch(skeletonPageIndexProvider);
  return skeletonPages[skeletonPageIndex];
}





