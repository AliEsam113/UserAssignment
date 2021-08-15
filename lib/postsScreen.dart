import 'package:flutter/material.dart';
import 'package:login/model.dart';
import 'package:login/page2.dart';
import 'package:login/service.dart';


class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  int id=0;
  bool loading = true;
  List<User> posts = [];

  getposts() async {
    posts = await Service().getUsers();
    loading = false;
    setState(() {});
  }

  void initState() {
    super.initState();
    getposts();
  }
  void increament(){
    id++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 13),
        primary: Colors.lightBlueAccent,
        onPrimary: Colors.white,
        fixedSize: new Size(500, 40));
    return Scaffold(
        body: loading
            ? Center(child: CircularProgressIndicator())
            : Center(
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: style,
                        onPressed: () {
                          increament();
                          ;
                        },
                        child: const Text('Show Posts'),
                      ),
                    ],
                  ),
                ),
              ));
  }
}
