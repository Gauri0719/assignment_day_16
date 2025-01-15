import 'package:flutter/material.dart';

class CreateTodoList extends StatefulWidget {
  const CreateTodoList({super.key});

  @override
  State<CreateTodoList> createState() => _CounterAppState();
}
@override
class _CounterAppState extends State<CreateTodoList> {
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(title:Text("Create to-do",style: TextStyle(
           color: Colors.black,
            fontWeight: FontWeight.w900,
        fontSize: 45),),),
     body: SafeArea(child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Column(
           children: [
     
             Column(
               children: [
                 Container(
                   margin: EdgeInsets.only(right: 150,left: 20,top: 20),
                    width: MediaQuery.of(context).size.width*0.5,
                   height: MediaQuery.of(context).size.width*0.1,

                       decoration: BoxDecoration(
                           borderRadius:BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.grey,width: 1.0),

                 ),
                   child: Text("Set Remainder",style: TextStyle(
                         fontSize: 20,fontWeight: FontWeight.w400),
                       textAlign: TextAlign.center,),)
               ],
             ),
           ],
         ),
       Container(
         padding: EdgeInsets.only(top: 20,left: 30),
         margin: EdgeInsets.only(right: 200.0),
         child: Text("Tell us about your task",style: TextStyle(
             color: Colors.grey,fontSize: 17,fontWeight: FontWeight.w400),),
       ),
        Container(
          padding: EdgeInsets.only(right: 270),
            margin: EdgeInsets.only(right: 40,left: 30),
    width: MediaQuery.of(context).size.width*1.0,
    height: 55 ,
    decoration:
    BoxDecoration(

    borderRadius:BorderRadius.circular(18.0),
      border: Border.all(color: Colors.grey,width: 1.0),
    ),
    child: Center(
    child: Text("Title",style: TextStyle(
    fontSize: 20,fontWeight: FontWeight.w400),
    ),
    )),
         Container(
           padding: EdgeInsets.only(top: 10,right: 200),
             margin: EdgeInsets.only(right: 40,left: 30,top: 10),
             width: MediaQuery.of(context).size.width*1.0,
             height: 55 ,
             decoration: BoxDecoration(
               borderRadius:BorderRadius.circular(18.0),
               border: Border.all(color: Colors.grey,width: 1.0),
             ),
             child: Center(
               child: Text("Description",style: TextStyle(
                   fontSize: 20,fontWeight: FontWeight.w400),
                 textAlign: TextAlign.right,
               ),
             )),
 Container(
     padding: EdgeInsets.only(left: 40),
   margin: EdgeInsets.only(top: 40),
     child:Text("Repeat",style: TextStyle(color: Colors.grey,fontSize: 20),),
 ),
         Row(
           children: [
             Container(
                 // padding: EdgeInsets.only(right: 270),
                 margin: EdgeInsets.only(left: 30),
                 // width: MediaQuery.of(context).size.width*1.0,
                 height: 55 ,
                 width: 100,
                 decoration:
                 BoxDecoration(
                   color: Colors.black,
                   borderRadius:BorderRadius.circular(30.0),
                   border: Border.all(color: Colors.grey,width: 1.0),
                 ),
                 child: Center(
                   child: Text("Daily",style: TextStyle(
                       fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),
                   ),
                 )),
             Container(
               // padding: EdgeInsets.only(right: 270),
                 margin: EdgeInsets.only(left: 20),
                 // width: MediaQuery.of(context).size.width*1.0,
                 height: 55 ,
                 width: 120,
                 decoration:
                 BoxDecoration(
                   borderRadius:BorderRadius.circular(30.0),
                   border: Border.all(color: Colors.grey,width: 1.0),
                 ),
                 child: Center(
                   child: Text("Weekly",style: TextStyle(
                       fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                   ),
                 )),
             Container(
               // padding: EdgeInsets.only(right: 270),
                 margin: EdgeInsets.only(left: 20),
                 // width: MediaQuery.of(context).size.width*1.0,
                 height: 55 ,
                 width: 100,
                 decoration:
                 BoxDecoration(
                   borderRadius:BorderRadius.circular(30.0),
                   border: Border.all(color: Colors.grey,width: 1.0),
                 ),
                 child: Center(
                   child: Text("Monthly",style: TextStyle(
                       fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                   ),
                 )),
           ],
         ),
         Column(
           children: [
             Container(
               // padding: EdgeInsets.only(right: 270),
                 margin: EdgeInsets.only(left: 30,top: 10),
                 // width: MediaQuery.of(context).size.width*1.0,
                 height: 55 ,
                 width: 150,
                 decoration:
                 BoxDecoration(
                   borderRadius:BorderRadius.circular(30.0),
                   border: Border.all(color: Colors.grey,width: 1.0),
                 ),
                 child: Center(
                   child: Text("No Repeat",style: TextStyle(
                       fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                   ),
                 )),
           ],
         ),
         Row(
           children: [
             Container(
               // padding: EdgeInsets.only(right: 270),
                 margin: EdgeInsets.only(left: 20,top: 10),
                 // width: MediaQuery.of(context).size.width*1.0,
                 height: 55 ,
                 width: 110,
                 decoration:
                 BoxDecoration(
                   borderRadius:BorderRadius.circular(30.0),
                   border: Border.all(color: Colors.grey,width: 1.0),
                 ),
                 child: Center(
                   child: Text("Sunday",style: TextStyle(
                       fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                   ),
                 )),
             Container(
               // padding: EdgeInsets.only(right: 270),
                 margin: EdgeInsets.only(left: 20,top: 10),
                 // width: MediaQuery.of(context).size.width*1.0,
                 height: 55 ,
                 width: 110,
                 decoration:
                 BoxDecoration(
                   borderRadius:BorderRadius.circular(30.0),
                   border: Border.all(color: Colors.grey,width: 1.0),
                   color: Colors.black,
                 ),
                 child: Center(
                   child: Text("Monday",style: TextStyle(
                       fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                   ),
                 )),
             Container(
               // padding: EdgeInsets.only(right: 270),
                 margin: EdgeInsets.only(left: 20,top: 10),
                 // width: MediaQuery.of(context).size.width*1.0,
                 height: 55 ,
                 width: 110,
                 decoration:
                 BoxDecoration(
                   borderRadius:BorderRadius.circular(30.0),
                   border: Border.all(color: Colors.grey,width: 1.0),
                   color: Colors.black,
                 ),
                 child: Center(
                   child: Text("Tuesday",style: TextStyle(
                       fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                   ),
                 )),
           ],
         ),
         Column(
           children: [
             Row(
               children: [
                 Container(
                   // padding: EdgeInsets.only(right: 270),
                     margin: EdgeInsets.only(left: 20,top: 10),
                     // width: MediaQuery.of(context).size.width*1.0,
                     height: 55 ,
                     width: 150,
                     decoration:
                     BoxDecoration(
                       borderRadius:BorderRadius.circular(30.0),
                       border: Border.all(color: Colors.grey,width: 1.0),
                     ),
                     child: Center(
                       child: Text("Wednesday",style: TextStyle(
                           fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                       ),
                     )),
                 Container(
                   // padding: EdgeInsets.only(right: 270),
                     margin: EdgeInsets.only(left: 20,top: 10),
                     // width: MediaQuery.of(context).size.width*1.0,
                     height: 55 ,
                     width: 120,
                     decoration:
                     BoxDecoration(
                       borderRadius:BorderRadius.circular(30.0),
                       color: Colors.black,
                       border: Border.all(color: Colors.grey,width: 1.0),
                     ),
                     child: Center(
                       child: Text("Thrusday",style: TextStyle(

                           fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                       ),
                     )),
               ],
             )
           ],
         ),
         Column(
           children: [
             Row(
               children: [
                 Container(
                   // padding: EdgeInsets.only(right: 270),
                     margin: EdgeInsets.only(left: 20,top: 10),
                     // width: MediaQuery.of(context).size.width*1.0,
                     height: 55 ,
                     width: 120,
                     decoration:
                     BoxDecoration(
                       borderRadius:BorderRadius.circular(30.0),
                       border: Border.all(color: Colors.grey,width: 1.0),
                     ),
                     child: Center(
                       child: Text("Friday",style: TextStyle(
                           fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                       ),
                     )),

               Container(
                 // padding: EdgeInsets.only(right: 270),
                   margin: EdgeInsets.only(left: 20,top: 10),
                   // width: MediaQuery.of(context).size.width*1.0,
                   height: 55 ,
                   width: 150,
                   decoration:
                   BoxDecoration(
                     borderRadius:BorderRadius.circular(30.0),
                     border: Border.all(color: Colors.grey,width: 1.0),
                   ),
                   child: Center(
                     child: Text("Saturday",style: TextStyle(
                         fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
                     ),
                   )),
               ],
             )
           ],
         )
    ])));

  }
  }
