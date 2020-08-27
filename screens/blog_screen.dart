import 'package:cindy_news/model/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/blog_widget.dart';
import '../widgets/app_drawer.dart';
import '../helper/news_api.dart';
import '../model/response_data.dart';
import '../model/news_response_model.dart';

class BlogScreen extends StatefulWidget {
 
  @override
  _BlogScreenState createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {


  void initState(){
    super.initState();
    NewsAPI().fetchNews();
  }

  //getNews() async{
  //  News newsClass = News();
  //  await newsClass.getNews();
  //  articles = newsClass.news;
  //   setState(() {
  // _loading = false;
  //  });
  // }


  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Cindy', style: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w500),),
              Text('News', style: TextStyle(
                color: Colors.black,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
              ),
          ],
        ),
      ),
      drawer: AppDrawer(),
      body: FutureBuilder<NewsResponseModel>(
          future: NewsAPI().fetchNews(),
          builder: (ctx, dataSnapshot){
        if(dataSnapshot.hasData) {
          return ListView.builder(
                itemCount: ResponseData.newsList.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (ctx, i) {
                  return Card(
                   // elevation: 2,
                   // color: AppColors.designColor3,
                    shape:  RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
                    child: BlogWidget(
                      sectionName: ResponseData.newsList[i].sectionName,
                      webTitle: ResponseData.newsList[i].webTitle,
                      webUrl: ResponseData.newsList[i].webUrl,
                    ),
                  );
               }
              //),
          );
        }else{
          return Center(
              child: CircularProgressIndicator(
              strokeWidth: 2,
              backgroundColor: AppColors.designColor3,
              valueColor: new AlwaysStoppedAnimation(AppColors.designColor),
            ),
          );
        }
          },
        ),
    );
  }
}