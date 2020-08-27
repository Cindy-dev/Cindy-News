import 'package:flutter/material.dart';
import '../screens/categories_overview_screen.dart';

class AppDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
        child: Container(
         // color: AppColors.designColor3,
          child: Column(
            children: <Widget>[
              AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     Text('Cindy', style: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w500),),
                      Text('News', style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      ),),
                  ],
                ),
                automaticallyImplyLeading: false,
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home', style: TextStyle(
                  fontFamily: 'Anton',
                  fontSize: 15,
                  //fontWeight: FontWeight.bold,
                ),),
                onTap:(){
                 Navigator.of(context).pushReplacementNamed('/');
                } 
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.category),
                title: Text('Categories', style: TextStyle(
                  fontFamily: 'Anton',
                  fontSize: 15,
                ),),
                onTap:(){
                  Navigator.of(context).pushReplacementNamed(CategoriesOverviewScreen.routeName);
                } 
              ),
            ],
          ),
        ),
      );
  }
}