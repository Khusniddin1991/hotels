import 'package:flutter/material.dart';

import 'images.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Widget _first_widget(){
    return  Container(padding:EdgeInsets.symmetric(horizontal: 20),height: 180,
      child:ListView.builder(scrollDirection:Axis.horizontal,itemCount:_list.length,itemBuilder: (ctx,index){
        Images lists=_list[index];
        return AspectRatio(aspectRatio: 0.7/0.7,
          child: Container(height: 100,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(image:DecorationImage(
                image: AssetImage(lists.image,),
                fit: BoxFit.cover
            ),borderRadius: BorderRadius.circular(30)
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)

                      , gradient:LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.2)
                      ]
                  )
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween
                      ,children: [

                      Padding(padding: EdgeInsets.symmetric(horizontal: 18,vertical: 20),
                          child: Text(lists.text,style: TextStyle(color: Colors.white,
                              fontWeight:FontWeight.bold,fontSize: 20),)),
                      IconButton(icon: Icon(Icons.favorite,color: Colors.red,), onPressed: (){})

                    ],)


                  ],)
              ],
            )

            ,),
        );

      })
      ,);
  }
  Widget second_widget(){
    return Container(padding: EdgeInsets.symmetric(horizontal:40),child: Column(children: [
    Align(alignment: Alignment.topLeft,child: Text('Luxry Hotels',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))

    ],),);
  }


  List <Images> _list=[
    Images(image:'asset/images/image.jpg',text: 'Hotel 1'),
    Images(image:'asset/images/image2.jpg',text: 'Hotel 2'),
    Images(image:'asset/images/image3.jpg',text: 'Hotel 3'),
    Images(image:'asset/images/image4.jpg',text: 'Hotel 4'),
    Images(image:'asset/images/image5.jpg',text: 'Hotel 5'),
    Images(image:'asset/images/image6.jpg',text: 'Hotel 6'),
  ];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(backgroundColor: Colors.white,
      body: ListView(
        children: [
          // header part on this project
          Container(
            height: 220,

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/special.jpg')
                    ,fit: BoxFit.cover
              )
            ),child: Stack(children: [

              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin:Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4)
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(padding:EdgeInsets.only(left:70),
                        child: Text('Best Hotels Ever',
                          style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
                          SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical:10 ),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                    ),child: TextField(
                      decoration: InputDecoration(
                        hintText:'Search for hotel',
                        hintStyle: TextStyle(color: Colors.grey),
                        border:InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 19,bottom: 12),
                        prefixIcon: Icon(Icons.search)
                      ),
                    ),
                    ),
                    SizedBox(height: 30,),

                  ],
                ),
              )
          ],),

          ),
          SizedBox(height: 10,),
          // body part

          Container(padding: EdgeInsets.symmetric(horizontal:40),child: Column(children: [
            Align(alignment: Alignment.topLeft,child: Text('Business Hotels',style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),))],
      ),),
          SizedBox(height: 10,),
          _first_widget(),
          SizedBox(height: 10,),
          Container(padding: EdgeInsets.symmetric(horizontal:40),child: Column(children: [
            Align(alignment: Alignment.topLeft,child: Text(' Airport Hotels',style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),))],
          ),),   SizedBox(height: 10,),
          _first_widget(),  SizedBox(height: 10,),
          Container(padding: EdgeInsets.symmetric(horizontal:40),child: Column(children: [
            Align(alignment: Alignment.topLeft,child: Text('Resort Hotels',style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),))],
          ),),  SizedBox(height: 10,),
          _first_widget(),
    ]
    )));
  }
}

