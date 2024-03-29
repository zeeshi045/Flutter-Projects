import 'package:alumni/resources/firebaseRepos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:shimmer/shimmer.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostCard extends StatefulWidget {
  final QueryDocumentSnapshot qds;
  PostCard(this.qds);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  FirebaseRepos _repository = new FirebaseRepos();
  //
  introTab() {
    return Container(
      height: 65,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            padding: EdgeInsets.fromLTRB(5, 5, 0, 2),
            child: Shimmer.fromColors(
              baseColor:
                  widget.qds.data()['tag'].toString().toUpperCase() == "STUDENT"
                      ? Colors.lightBlue
                      : Colors.white,
              highlightColor: Colors.deepPurpleAccent,
              child: Text(
                widget.qds.data()['name'],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 3),
            child: Text(
              widget.qds.data()['tag'].toString().toUpperCase(),
              style: TextStyle(fontSize: 14, color: Colors.white),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  imageContainer() {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        child: Image.network(
          widget.qds.data()['imageUrl'],
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  textContainer() {
    return Container(
      color:Colors.deepPurpleAccent,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: widget.qds.data()['name'],
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: widget.qds.data()['tag'].toString().toUpperCase() ==
                          "STUDENT"
                      ? Colors.lightBlue
                      : Colors.white,
                )),
            TextSpan(text: ":   "),
            TextSpan(text: widget.qds.data()['text']),
          ]),
        ),
        // child: Text(widget.qds.data()['text'],
        //     style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }

  timeAgoContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: Text(
        timeago.format(DateTime.now().subtract(
            DateTime.now().difference(widget.qds.data()['date'].toDate()))),
        style: TextStyle(fontSize: 12, color: Colors.white),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  likeContainer() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          LikeButton(
            circleColor:
            CircleColor(start: Colors.white, end:Colors.black),
            bubblesColor: BubblesColor(
              dotPrimaryColor: Colors.amber,
              dotSecondaryColor: Colors.green,
            ),
            isLiked: (widget.qds.data()['likes'])
                .contains(_repository.getCurrentUser().uid),
            likeBuilder: (bool isLiked) {
              return Icon(
                Icons.thumb_up,
                color: isLiked ? Colors.blue: Colors.white,
                size: 30,
              );
            },
            onTap: (bool cout) {
              return _repository.updateLikes(
                  widget.qds.data()['id'], _repository.getCurrentUser().uid);
            },
//
            likeCount: widget.qds.data()['likes'].length,
            countBuilder: (int count, bool isLiked, String text) {
              var color = Colors.white;
              Widget result;
              if (count == 0) {
                result = Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Press Like Button if you Interested",
                    style: TextStyle(color: color),
                  ),
                );
              } else
                result = Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "$text Like",
                    style: TextStyle(color: color),
                  ),
                );
              return result;
            },
          ),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          introTab(),
          if (widget.qds.data()['imageUrl'] == null) textContainer(),
          if (widget.qds.data()['imageUrl'] == null) likeContainer(),
          if (widget.qds.data()['imageUrl'] != null) imageContainer(),
          if (widget.qds.data()['imageUrl'] != null) likeContainer(),
          if (widget.qds.data()['imageUrl'] != null) textContainer(),
          timeAgoContainer(),
        ],
      ),
    );
  }
}
