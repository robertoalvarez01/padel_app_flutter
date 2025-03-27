import 'package:flutter/material.dart';
import 'package:padel_app/features/home/presentation/pages/home_page.dart';

class SkeletonProvider extends ChangeNotifier {
  int currentPage;

  SkeletonProvider({
    required this.currentPage
  });

  final pagesList = <Widget>[
    HomePage(),
    Container(color: Colors.green,),
    Container(color: Colors.purple,),
    Container(color: Colors.orange,),
    // const ProfilePage(),
  ];

  get getPage => pagesList[currentPage];

  void goToPage(int newPage) async {
    currentPage = newPage;
    notifyListeners();
  }
}
