import 'package:flutter/material.dart';
import 'package:tutorial_application/models/FLUTTER%2058.%20Infinite%20(Auto%20Loading)%20List%20with%20BLoC%20(post).dart';

class PostItem extends StatelessWidget {
  final Post post;

  const PostItem(this.post);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(post.id),
          SizedBox(
            width: (MediaQuery.of(context).size.width - 40) * 7 / 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(post.body),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
