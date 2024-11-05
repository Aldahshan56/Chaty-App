import 'package:flutter/material.dart';

import '../data/chat_model.dart';

class ChatListRow extends StatelessWidget{
  const ChatListRow({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(chats[index].imageProfile),
                radius: 30,
                //child: Icon(Icons.account_circle_rounded,size:60,color: Colors.white70,),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chats[index].name,
                      style: const TextStyle(color: Colors.white, fontSize: 17),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      chats[index].massage,
                      style: const TextStyle(color: Colors.grey, fontSize: 13),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  chats[index].time,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ],
          ),
        );
      },
      itemCount:chats.length,
    );
  }
}