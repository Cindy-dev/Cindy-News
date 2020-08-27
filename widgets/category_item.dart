import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget{
  final String categoryName;
  final String imageUrl;

  CategoryItem(this.categoryName, this.imageUrl);
  @override
  Widget build (BuildContext context){
    return GridTile(child: 
      GestureDetector(
        onTap: (){},
        child: CachedNetworkImage(
          imageUrl:imageUrl, 
          fit: BoxFit.cover,
        ),
      ),
      footer: GridTileBar(
        backgroundColor:Colors.grey,
        title: Text(
          categoryName,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}