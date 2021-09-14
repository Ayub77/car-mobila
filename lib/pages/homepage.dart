import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  
  static final String id = "HomePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


late PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          margin: EdgeInsets.only(left: 20),
          child: Text("Cars",style: TextStyle(color: Colors.red,fontSize: 25),)),
        brightness: Brightness.dark,
        actions: [
          
          IconButton(onPressed:(){
            
          }, 
          icon: Icon(Icons.notifications_none,color: Colors.red,)),
          SizedBox(width: 5,),
          IconButton(onPressed:(){
            
          }, 
          icon: Icon(Icons.shopping_cart,color: Colors.red,)),
          
        ],
      ),

      body: SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                width: double.infinity,
                child: ListView(
                  
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true,"All"),
                    singleTab(false,"red"),
                    singleTab(false,"blue"),
                    singleTab(false,"green"),
                    singleTab(false,"brown"),
                    singleTab(false,"amber"),
                    singleTab(false,"white"),
                  ],
                )
                ),



                //Car Item

                SizedBox(height: 20,),
                makeItem("assets/images/im_car1.jpg"),
                makeItem("assets/images/im_car2.jpg"),
                makeItem("assets/images/im_car3.jpg"),
                makeItem("assets/images/im_car4.png"),
                makeItem("assets/images/im_car5.jpg"),
                makeItem("assets/images/im_car1.jpg"),
                makeItem("assets/images/im_car2.jpg"),
                makeItem("assets/images/im_car3.jpg"),
                makeItem("assets/images/im_car4.png"),
                makeItem("assets/images/im_car5.jpg"),
              
            ],
          ),
        ) ,
      ),

    );
  }
  Widget singleTab(bool type, String text){

      return AspectRatio(aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type? Colors.red:Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text,style: TextStyle(fontSize: type?  18:15,color: Colors.black),)
          ),
      ),);


  }


  Widget makeItem(String image){

      return Container(
        height:250,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(0,10)
            )
          ]
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.3),  
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("PDP Car",style: TextStyle(color: Colors.white,fontSize: 24),),
                  SizedBox(width: 10,),
                  Text("Electric",style: TextStyle(color: Colors.red,fontSize: 20),),
                ],
              ),
              SizedBox(height: 15,),
              Text("100\$",style: TextStyle(color: Colors.white,fontSize: 24),),
              SizedBox(height: 90,),
              Container(
                width:45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.5),
                  color: Colors.red
                ),
                child: Center(
                  child: IconButton(onPressed: (){

                  },
                   icon: Icon(Icons.favorite_border,color: Colors.white,)),
                ),
              )
            ],
          )
        ),
      );



  }

}