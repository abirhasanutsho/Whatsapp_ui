import 'package:flutter/material.dart';
import 'package:whatsappui/model/user_model.dart';

class ChatSCreen extends StatefulWidget {
  const ChatSCreen({Key? key}) : super(key: key);

  @override
  State<ChatSCreen> createState() => _ChatSCreenState();
}

class _ChatSCreenState extends State<ChatSCreen> {
  List<UserModel> userList = [
    UserModel(
        name: "Abir Hasan",
        message: "Hello",
        image:
            "https://media.istockphoto.com/id/1179420343/photo/smiling-man-outdoors-in-the-city.jpg?s=612x612&w=0&k=20&c=8l-gOboGEFSyCFXr09EguDmV0E0bFT5usAms1wyFBh8=",
        date: "12.00"),
    UserModel(
        name: "Nahid",
        message: "Hello How Are You",
        image:
            "https://t4.ftcdn.net/jpg/02/24/86/95/360_F_224869519_aRaeLneqALfPNBzg0xxMZXghtvBXkfIA.jpg",
        date: "2.00"),
    UserModel(
        name: "Saifuddin",
        message: "Hello How do you do?",
        image:
            "https://image.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg",
        date: "5.00"),
    UserModel(
        name: "Abir Hasan",
        message: "Hello",
        image:
        "https://media.istockphoto.com/id/1179420343/photo/smiling-man-outdoors-in-the-city.jpg?s=612x612&w=0&k=20&c=8l-gOboGEFSyCFXr09EguDmV0E0bFT5usAms1wyFBh8=",
        date: "12.00"),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: [
       ListView.builder(
         shrinkWrap: true,
         primary: false,
         itemCount: userList.length,
         itemBuilder: (context, index) {
           return Padding(
             padding: EdgeInsets.only(top: 10),
             child: ListTile(
               trailing: Text("${userList[index].date}"),
               leading: CircleAvatar(
                 radius: 25,
                 backgroundImage: NetworkImage("${userList[index].image}"),
               ),
               title: Text("${userList[index].name}"),
               subtitle: Text("${userList[index].message}"),
             ),
           );
         },
       ),

      GridView.builder(
        shrinkWrap: true,
        primary: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 6,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              color: Colors.red,
            ),
          );
        },
      )

      ],
    );
  }
}
