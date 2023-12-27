import 'package:exam_ui/const.dart';
import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70.0,vertical: 20),
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
             color:  colors1,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.logout,color: Colors.white,size: 25,),
              Text("Log out",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
           children: [
             gap1,
             ListTile(
               leading: profile,
               title: Center(child: Text("Account",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18))),
             trailing: notification,
             ),
             gap1,
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 17.0),
               child: Divider(
                 color: Colors.grey,
                 thickness: 4,
               ),
             ),
             Container(
               width: double.infinity,
               height: 90,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        profile1,
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Dean Kreshen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                            Text("+3455744743444"),
                          ],
                        ),
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Icon(Icons.arrow_forward_ios),
                   ),
                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 17.0),
               child: Divider(
                 color: Colors.grey,
                 thickness: 4,
               ),
             ),

             ListTile(
               leading: Icon(Icons.access_time),
               trailing: Icon(Icons.arrow_forward_ios),
               title: Text("History",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
             ),
             ListTile(
               leading: Icon(Icons.paypal),
               trailing: Icon(Icons.arrow_forward_ios),
               title: Text("Digital Payment",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
             ),
             ListTile(
               leading: Icon(Icons.shopping_cart_checkout),
               trailing: Icon(Icons.arrow_forward_ios),
               title: Text("Order",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
             ),
             ListTile(
               leading: Icon(Icons.favorite_border),
               trailing: Icon(Icons.arrow_forward_ios),
               title: Text("Favourire",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
             ),
             ListTile(
               leading: Icon(Icons.dark_mode,color: Colors.black,),
               trailing: Icon(Icons.arrow_forward_ios ),
               title: Text("Switch to Dark Mode",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
             ),

           ],
        ),
      ),
    );
  }
}