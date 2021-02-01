import 'package:flutter/material.dart';
import 'package:whatsapp/model/status_model.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 50.0,
                  child:Stack(
                    children: [
                      ClipOval(
                        child: Image.network("https://media-exp1.licdn.com/dms/image/C5103AQFhvjjKuwzUkw/profile-displayphoto-shrink_100_100/0/1581396030994?e=2159024400&v=beta&t=uJ_Ci2gqI2I0Eo1iGfzW8DP5kHiaLfsMnS00FS0na_Q",width: 50,height: 50,)
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                            color:Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          child:Icon(
                            Icons.add,
                            color: Colors.white,
                            size:15.0,
                          )
                        ),
                      )
                    ],
                  )
                ),
                title: Text("My Status",style: new TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("Tap to add status update"),
              ),
            )
          ],
        ),
        SizedBox(
          height: 30.0,
          child:Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
            width: double.infinity,
            color: Colors.grey.shade200,
            child: Text("Recent Update",style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold),),
          )
        ),
        Expanded(
          child: ListView.builder(
            itemCount: statusData.length,
            itemBuilder: (context,i)=>new Column(
              children: [
                new Divider(height: 0.1,),
                new ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(statusData[i].pic),
                  ),
                  title: Row(
                    children: [
                      new Text(
                        statusData[i].name,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  subtitle: Container(
                    child:Text(
                      statusData[i].time,
                      style: TextStyle(color:Colors.grey,fontSize: 15.0),
                    )
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
