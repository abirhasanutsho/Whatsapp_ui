import 'package:flutter/material.dart';
import 'package:whatsappui/component/call_screen.dart';
import 'package:whatsappui/component/camera_screen.dart';
import 'package:whatsappui/component/chat_screen.dart';
import 'package:whatsappui/component/status_screen.dart';
 
 class WhatsappScreen extends StatefulWidget {
   const WhatsappScreen({Key? key}) : super(key: key);
 
   @override
   State<WhatsappScreen> createState() => _WhatsappScreenState();
 }
 
 class _WhatsappScreenState extends State<WhatsappScreen> {
   @override
   Widget build(BuildContext context) {
     return DefaultTabController(
         length: 4,
         child: Scaffold(

           appBar: AppBar(
             backgroundColor: Colors.green[800],
             title: Text("WhatsApp",style: TextStyle(
               fontSize: 18,color: Colors.white
             ),),
             actions: [
               Icon(Icons.camera_alt,color: Colors.white,),
               SizedBox(width: 20,),
               Icon(Icons.search,color: Colors.white,),
               SizedBox(width: 20,),
               Icon(Icons.more_vert,color: Colors.white,),
               SizedBox(width: 20,),

             ],
             bottom: TabBar(
               labelColor: Colors.white,
               indicatorColor: Colors.white,
               indicatorSize: TabBarIndicatorSize.tab,
               indicatorWeight: 3,
               tabs: [
                 Tab(icon: Icon(Icons.camera_alt,)),
                 Tab(text: "Chat",),
                 Tab(text: "Status",),
                 Tab(
                   text: "Call",
                 )

               ],

             ),
           ),
           body: TabBarView(
             children: [
               CameraScreen(),
               ChatSCreen(),
               StatusScreen(),
               CallScreen(),

             ],
           ),
         ),
     );
   }
 }
 