//import 'package:flutter/foundation.dart';
import 'package:cindy_news/model/app_colors.dart';
import 'package:flutter/material.dart';
import './screens/blog_screen.dart';
import './screens/categories_overview_screen.dart';
import './helper/custom_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cindy News',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.designColor,
        accentColor: Colors.white,
        pageTransitionsTheme: PageTransitionsTheme(builders:{
          TargetPlatform.android: CustomPageTransitionBuilder() ,
          TargetPlatform.iOS: CustomPageTransitionBuilder(),
        })
      ),
      home: BlogScreen(),
      routes:{
        CategoriesOverviewScreen.routeName: (ctx) => CategoriesOverviewScreen(),
      },
    );
  }
}
