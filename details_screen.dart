import 'package:exam_ui/const.dart';
import 'package:exam_ui/model.dart';
import 'package:exam_ui/tab1.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
    DetailsScreen({super.key, required this.datas,});
 final Model datas;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
         body: SingleChildScrollView(
           child: DefaultTabController(
             length: 3,
             initialIndex: 0,
             child: Column(
               children: [
                      Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                                     children: [
                          InkWell(
                              onTap:() {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios)),
                          Text("Back",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)
                                     ],
                          ),
                          Text("${widget.datas.shopname}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          notification
                        ],
                      ),
                    ),
                 gap2,
                 Stack(
                   alignment: Alignment.bottomCenter,
                   clipBehavior: Clip.none,
                   children: [
                     Center(
                       child: Container(
                         width: MediaQuery.of(context).size.width*0.9,
                         height: 180,
                         child: ClipRRect(
                           borderRadius: const BorderRadius.only(
                             topLeft: Radius.circular(20),
                             topRight: Radius.circular(20),
                             bottomLeft: Radius.circular(10),
                             bottomRight: Radius.circular(10),
                           ),
                           child: Image.asset("${widget.datas.image}",
                             fit: BoxFit.fill,
                           ),
                         ),
                       ),
                     ),
                     Positioned(
                       bottom: -100,
                       child: Container(
                         height: 140,
                         width: MediaQuery.of(context).size.width*0.7,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                         child:   Column(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Text("${widget.datas.shopname}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                             Text("21 Matt St, NY 10013,NewYourk",style: TextStyle(fontSize: 12)),
                             Text("Open 8:00-22:00",style:  TextStyle(color: Colors.green)),
                             Text("Chiness.Italian.Fast food",style:  TextStyle(color: Colors.black)),
                             Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Row(
                                   children: [
                                     Text("${widget.datas.ratin}",style:  TextStyle(color: Colors.black)),
                                     Icon(Icons.star,color: Colors.orange,size: 12,)
                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Icon(Icons.shopping_basket_sharp,color: Colors.orange,),
                                     Text(" \$35 - \$65",style:  TextStyle(color: Colors.black)),

                                   ],
                                 ),
                               ],
                             )

                           ],
                         ),
                       ),
                     )
                   ],
                 ),
                SizedBox(height: 100,),
                 gap2,

                 Container(
                   width: double.infinity,

                   child: const TabBar(tabs: [
                     Tab(
                       text: "Items",
                       icon: Icon(Icons.list_alt),
                     ),
                     Tab(
                       text: "Reviews",
                       icon: Icon(Icons.reviews),
                     ),
                     Tab(
                       text: "About",
                       icon: Icon(Icons.more_horiz),
                     ),
                   ]),
                 ),
                 Container(
                   height: 600,
                   child: TabBarView(children: [
                     Tab1(),
                   Container(color: Colors.tealAccent,),
                   Container(color: Colors.orange,),
                   ]),
                 )
               ],
             ),
           ),
         ),
      ),
    );
  }
}
