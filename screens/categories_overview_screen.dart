import 'package:flutter/material.dart';
import '../model/category.dart';
import '../widgets/category_item.dart';
import '../widgets/app_drawer.dart';

class CategoriesOverviewScreen extends StatelessWidget{
  static const routeName = '/categories';
  final List <Category> category= [
    Category(
      categoryName: 'Business',
      imageUrl: 'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80',
    ),
    Category(
      categoryName: 'Entertainment',
      imageUrl: 'https://images.unsplash.com/photo-1470020618177-f49a96241ae7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
    ),
    Category(
      categoryName: 'General',
      imageUrl: 'https://images.unsplash.com/photo-1489533119213-66a5cd877091?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80',
    ),
    Category(
      categoryName: 'Health',
      imageUrl: 'https://images.unsplash.com/photo-1505751172876-fa1923c5c528?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    ),
    Category(
      categoryName: 'Education',
      imageUrl: 'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    ),
    Category(
      categoryName: 'Science',
      imageUrl: 'https://images.unsplash.com/photo-1567427018141-0584cfcbf1b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    ),
    Category(
      categoryName: 'Politics',
      imageUrl: 'https://images.unsplash.com/photo-1502772066658-3006ff41449b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=856&q=80',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Categories', style: TextStyle(
              color: Colors.black,
              fontFamily: 'Roboto Condensed',
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      drawer: AppDrawer(),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount:category.length,
        itemBuilder:(ctx, i) => CategoryItem(
          category[i].categoryName,
          category[i].imageUrl ,
        ),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}