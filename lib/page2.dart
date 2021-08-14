import 'package:flutter/material.dart';
import 'model.dart';
class page2 extends StatefulWidget {
  int Id;
  List<Post> posts = [];
  page2({required this.posts,required this.Id});

  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Post of id ${widget.Id}"),
      ),
      body: ListView(
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                widget.Id++;
              });

            },
            child: Text("Show Next post"),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text("Post's title is :${widget.posts[widget.Id-1].title}\n"
                          "Post's user id is : ${widget.posts[widget.Id-1].userId}\n"
                          "Post's id is : ${widget.posts[widget.Id-1].id}\n"),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Post's body is :\n${widget.posts[widget.Id-1].body} ",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
          ,if(widget.Id>1)TextButton(
            onPressed: () {
              setState(() {
                widget.Id--;
              });

            },
            child: Text("Show Previous post"),
          ),
        ],
      ),
    );
  }
}
