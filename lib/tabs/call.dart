import 'package:flutter/material.dart';
import 'package:whatsapp/model/call_model.dart';

    class Call extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return new ListView.builder(
          itemCount: callsData.length,
          itemBuilder: (context,i)=>new Column(
            children: [
              new Divider(height: 10.0,),
              new ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(callsData[i].img),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Text(
                      callsData[i].name,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    new Icon(
                      i%2==0?Icons.call:Icons.videocam,
                      color:Theme.of(context).primaryColor
                    )
                  ],
                ),
                subtitle: Row(
                  children: [
                    new Icon(i%2==0 ?Icons.call_missed:Icons.call_made_outlined,
                    color: i%2==0?Colors.red:Theme.of(context).primaryColor),
                    Text(
                      callsData[i].time,
                      style: TextStyle(color: Colors.grey,fontSize: 12.0),
                    ),
                  ],
                )
              ),
            ],
          ),
        );
      }
    }
    