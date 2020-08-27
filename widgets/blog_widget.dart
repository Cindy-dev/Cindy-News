import 'package:cindy_news/model/app_colors.dart';
import 'package:flutter/material.dart';
import '../screens/blog_content_screen.dart';

class BlogWidget extends StatelessWidget{
  final String sectionName;
  final String webTitle;
  final String webUrl;

  BlogWidget({
    @required this.sectionName, 
    @required this.webUrl, 
    @required this.webTitle
    });
  @override
  Widget build (BuildContext context){
   return Padding(
     padding: EdgeInsets.all(15),
        child: ListTile(
        contentPadding: EdgeInsetsDirectional.only(end:20),
       leading: FittedBox(
         // alignment: Alignment.center,
          fit: BoxFit.cover,
           child: CircleAvatar(
           backgroundImage: AssetImage('assets/images/news.jpg'),
           radius: 150,
            //child: Padding(
            //  padding: EdgeInsets.all(10),
              //child: FittedBox(
              // fit: BoxFit.fitHeight,
              
                //child: Image.asset('assets/images/news.jpg'),
               // ),
           // ),
            ),
       ),
       title:Text(sectionName,
          style: TextStyle(
           fontWeight: FontWeight.w600,
            fontSize: 25,
            color: Colors.black87,
            fontFamily: 'Roboto Condensed'
          ),
          textAlign: TextAlign.start,
          ),
        subtitle: InkWell(

          splashColor: AppColors.designColor3,
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:
              (ctx) => BlogContentScreen(webUrl),   
            ));
            },
          child: Text(
            webTitle,
            style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: (AppColors.designColor2),
            fontFamily: 'Raleway',
          ),
          textAlign: TextAlign.justify,
          ),
        ),
          //child: Container(
          // margin: EdgeInsets.all(10),
           // padding: EdgeInsets.all(15),
           //   child: Column(
            //    children: <Widget>[
                  //Text(
                   // sectionName,
                   // style: TextStyle(
                    //  fontWeight: FontWeight.w600,
                    //  fontSize: 20,
                    //  color: Colors.black87,
                   // ),
                   // textAlign: TextAlign.center,
                  //),
               //   SizedBox(height: 5,),
                  
                  //GestureDetector(
                  //  onTap: (){
                  //     Navigator.push(context, MaterialPageRoute(builder:
                  //      (ctx) => BlogContentScreen(webUrl),   
                  //     ));
                  //  },
                  //     child: Text(
                   //     webTitle,
                    //    style: TextStyle(
                      //    fontWeight: FontWeight.w500,
                        //  fontSize: 18,
                          //color: Colors.blueAccent,
                        //),
                       // textAlign: TextAlign.justify,
                    //),
                  //),
               // ]
             // ),
             
        //  ),
     ),
   );
  }
}