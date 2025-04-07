import 'package:flutter/material.dart';
import 'package:padel_app/features/home/presentation/pages/home_page.dart';
import 'package:padel_app/features/tournament/presentation/pages/tournament_home_page.dart';

class SkeletonProvider extends ChangeNotifier {
  int _currentPage = 0;
  int get currentPage => _currentPage;
  set currentPage(int newCurrentPage){
    _currentPage = newCurrentPage;
    notifyListeners();
  }

  SkeletonProvider();

  static final pagesList = <Widget>[
    const HomePage(),
    const TournamentHomePage(),
    Container(color: Colors.purple,),
    Container(color: Colors.orange,),
    // const ProfilePage(),
  ];

  Widget get getSkeletonPage => pagesList[currentPage];
}
