import 'package:exam_ui/const.dart';
import 'package:flutter/material.dart';

import 'model.dart';
class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    List<Model> lists=[
      Model(
          image: "assets/baner1.jpg",
          time: "30 - 40 Mins",
          proname: "Fried chickens with spycies",
          ratin: 4.7,
          shopname: "KFC"),
      Model(
          image: "assets/baner2.jpg",
          time: "20 - 40 Mins",
          proname: "Fried rice with saguages",
          ratin: 1.7,
          shopname: "Pizza Hut"),
      Model(
          image: "assets/banner3.jpg",
          time: "5 - 10 Mins",
          proname: "Burger with extra minus",
          ratin: 6.9,
          shopname: "Kabab Star"),
      Model(
          image: "assets/slider.jpg",
          time: "30 - 40 Mins",
          proname: "Fried chickens with spycies",
          ratin: 4.7,
          shopname: "KFC"),
    ];
    return   SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:   ListView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: lists.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipRRect(
                      borderRadius:BorderRadius.all(Radius.circular(10)),
                      child: Image.asset("${lists[index].image}",
                        height: 80,
                        width: 80,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("${lists[index].proname}",style: TextStyle(fontSize: 12)),
                        Text("\$4455.77"),
                      ],
                    ),

                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: colors1,
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.add,color: Colors.white,),
                          Text("3",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                          Icon(Icons.remove,color: Colors.white,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },


        ),
      ),
    );
  }
}
