import 'package:flutter/material.dart';

import '../widgets/chat_list.dart';
import '../widgets/favorites_contacts_widget.dart';


class HomePageChats extends StatelessWidget {
  const HomePageChats({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff5a88ac),
      appBar: AppBar(
        backgroundColor: const Color(0xffb1ccce),

        title: const Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/Images/chatIcon.png",),

            ),
            SizedBox(width: 5,),
            Text(
              "Chats",
              style: TextStyle(color:Color(0xff17305a) , fontSize: 35),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Color(0xff17305a),
                  size: 30,
                )),
          )
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FavoritesContacts(),
            SizedBox(
              height: 20,
            ),
            ChatList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff17305a),
        child: const Icon(
          Icons.add,
          size: 40,
          color: Color(0xffb1ccce),
        ),
      ),
    );
  }
}
