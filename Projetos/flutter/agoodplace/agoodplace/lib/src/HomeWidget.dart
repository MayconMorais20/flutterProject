import 'package:agoodplace/src/HomeBloc.dart';
import 'package:flutter/material.dart';

import 'model/Post.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  HomeBloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = new HomeBloc();
  }

  @override
  void dispose() {
    super.dispose();
    bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('JSON API')),
      ),
      body: StreamBuilder(
        stream: bloc.listOut,
        builder: (context, AsyncSnapshot<List<Post>> snapshot) {
          if (!snapshot.hasData)
            return Center(
              child: CircularProgressIndicator(),
            );
          if (snapshot.hasError)
            return Center(
              child: Text("Ops! Houve um erro !"),
            );
          List<Post> posts = snapshot.data;
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              Post post = posts[index];
              return ListTile(
                title: Text(post.title),
                subtitle: Text(post.body),
              );
            },
          );
        },
      ),
    );
  }
}
