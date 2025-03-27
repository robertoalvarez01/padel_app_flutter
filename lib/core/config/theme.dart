
import 'package:flutter/material.dart';

ThemeData appTheme (BuildContext context){
  return Theme.of(context).copyWith(
    colorScheme: Theme.of(context).colorScheme.copyWith(
      surface: const Color(0xFFDDDDDD), //Light Grey
      primaryContainer: const Color(0xFFFFFFFF) 
                       
    )
  );
}