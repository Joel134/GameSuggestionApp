import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';


class User extends StatelessWidget {

  final firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('User')
      ),
      body: ListPage(),
    );
  }
}

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

Future _data;
Future getPost() async{
var firestore = FirebaseFirestore.instance;

QuerySnapshot qn = await firestore.collection('users').get();
return qn.docs;
}

navigateToDetail(DocumentSnapshot post){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage(post:post,)));
}

@override
  void initState() {
    super.initState();
    _data = getPost();
  }




  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future:_data,
        builder: (_, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child:Text('Loading.....')
          );
        }else{
return ListView.builder(
  itemCount: snapshot.data.length,
  itemBuilder: (_,index){

return ListTile(
  title:Text(snapshot.data[index].data()["Title"]),
onTap: ()=>navigateToDetail(snapshot.data[index]),

);

});


        }
      }),
    );
  }
}

class DetailPage extends StatefulWidget {
  final DocumentSnapshot post;
  DetailPage({this.post});
  
  
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
   final firestore = FirebaseFirestore.instance;
  String _vote;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(widget.post.data()["Title"]),
      ),

          body: SingleChildScrollView(
                      child: new Column(
              
        
            children:<Widget>[ ListTile(
              title:Text(widget.post.data()["Title"]),
              
            ),
             ListTile(
              title:Text(widget.post.data()['Game1']) ,
            ),
 ListTile(
              title:Text(widget.post.data()['Game2']) ,
            ),
 ListTile(
              title:Text(widget.post.data()['Game3']) ,
            ),
             ListTile(
              title:Text(widget.post.data()['Game4']) ,
            ),
             ListTile(
              title:Text(widget.post.data()['Game5']) ,
            ),
new ListTile(
        leading: const Icon(Icons.check_box),
        title: new TextField(
            decoration: new InputDecoration(
              hintText: "Enter your Preferred Game!",
            ),
            
 onChanged: (val)=> setState(() => _vote = val),
        ),
      ),


RaisedButton(
                    child: const Text('Vote', style: TextStyle(color: Colors.cyan)),
                    onPressed: () {
firestore.collection("Voter").add(
  {
'Casted vote':_vote,
  
  }
);
                    },
                  ),

            ]
      ),
          ),
    );
  }
}