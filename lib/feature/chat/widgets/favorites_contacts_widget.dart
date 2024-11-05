import 'package:flutter/material.dart';

import '../data/chat_model.dart';


class FavoritesContacts extends StatelessWidget{
  const FavoritesContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Stories",style: TextStyle(color: Color(0xff17305a),fontSize: 20,)),
          const SizedBox(height: 10,),
          SizedBox(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return  Column(
                    children: [
                      CircleAvatar(
                        radius: 33,
                        backgroundColor: Colors.green,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(chats[index].imageProfile),
                          //child: Icon(Icons.account_circle_rounded,size:60,color: Colors.white70,),
                        ),
                      ),
                      const SizedBox(height: 8,),
                      SizedBox(
                        width: 55,
                          child: Text(
                            chats[index].name,
                            style: const TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context,index){
                  return const SizedBox(width: 13,);
                },
                itemCount:chats.length
            ),
          ),
        ],
      ),
    );
  }
}