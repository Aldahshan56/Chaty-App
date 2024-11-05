import 'package:flutter/material.dart';

import '../data/chat_model.dart';



class ChatList extends StatelessWidget {
  const ChatList({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          padding: const EdgeInsets.only(right: 15,left: 15,top: 20),
      decoration: const BoxDecoration(
        color: Color(0xffb1ccce),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16),
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(chats[index].imageProfile),
                    //child: Icon(Icons.account_circle_rounded,size:60,color: Colors.white70,),
                  ),
                  const Positioned(
                    right: 0,
                    bottom: 0,
                    child:CircleAvatar(
                      radius: 10.5,
                      backgroundColor:Color(0xffb1ccce) ,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
              title: Text(
                chats[index].name,
                style: const TextStyle(color: Color(0xff17305a), fontSize: 17,fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                chats[index].massage,
                style: const TextStyle(color: Color(0xff5a88ac), fontSize: 13),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Text(
                chats[index].time,
                style: const TextStyle(color: Color(0xff17305a), fontSize: 13,fontWeight: FontWeight.bold),
              ),
            );
        },
        itemCount:chats.length,
      ),
    ));
  }
}
