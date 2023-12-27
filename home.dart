import 'package:exam_ui/const.dart';
import 'package:exam_ui/details_screen.dart';
import 'package:exam_ui/model.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
 Padding(
   padding: const EdgeInsets.only(top: 8.0,),
   child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
     profile,
    Container(
        width: 180,
      height: 30,
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20)),
      child: Center(child: Text("Lagos Nigera",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))),
    ),
     notification,
     ],
   ),
 ),
 ListTile(
   title: Text("Welcome",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 18)),
   subtitle: Text("Dean",style: TextStyle(fontWeight: FontWeight.bold,color: colors1,fontSize: 25)),
 ),
              gap1,
  Center(
  child: Container(
    width: MediaQuery.of(context).size.width*0.9,
    height: 180,
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Image.asset("assets/slider.jpg",
       fit: BoxFit.fill,
      ),
    ),
  ),
),
              gap2,
              Center(
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.filter_list),
                      labelText: "What do you want to eat",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),

                  ),
                ),
              ),
              gap2,
              const Text("    Categories",style: TextStyle(fontWeight: FontWeight.bold,color: colors1,fontSize: 19)),
              gap2,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: colors1,width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/food1.png", ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: colors1,width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/food2.png", ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: colors1,width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/food3.png", ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: colors1,width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/food4.png", ),
                    ),
                  ),
                ],
              ),
               gap2,
              const Text("    Resturant near you",style: TextStyle(fontWeight: FontWeight.bold,color: colors1,fontSize: 17)),
               gap1,
              SizedBox(
                height: 230,
                child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: lists.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 220,
                      width: MediaQuery.of(context).size.width/1.4,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap:(){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(datas: lists[index],),));
                    },
                            child: ClipRRect(
                              borderRadius:const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              child: Image.asset("${lists[index].image}",
                                height: 140,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("   ${lists[index].proname}",style: TextStyle(color: Colors.black,fontSize: 12)),
                          Row(children: [
                            Text("  ${lists[index].shopname}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
                            SizedBox(width: 20,),
                            Text("${lists[index].ratin}",style: TextStyle(color: Colors.black,)),
                            Icon(Icons.star,color: Colors.orange,)
                          ],),
                          Text("    ${lists[index].time}",style: TextStyle(color: Colors.black,fontSize: 12)),
                        ],
                      ),
                    ),
                  );
                },

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
