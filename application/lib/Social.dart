import 'package:flutter/material.dart';

class Social extends StatefulWidget {
  // This widget is the home page of the application.
  @override
  _SocialpageState createState() => _SocialpageState();
}

class _SocialpageState extends State<Social> {
  // This state object manages the state of the home page.

  // A list of dummy posts for demonstration purposes.
  List<Post> posts = [
    Post(
      author: 'manish',
      content: '',
      likes: 10,
      comments: 2,
    ),
    Post(
      author: 'Bob',
      content: 'This is my first post.',
      likes: 5,
      comments: 1,
    ),
    Post(
      author: 'Charlie',
      content: 'I like Flutter.',
      likes: 7,
      comments: 3,
    ),
  ];

  // A controller for the text field to create a new post.
  TextEditingController postController = TextEditingController();

  // A method to add a new post to the list of posts.
  void addPost() {
    setState(() {
      // Create a new post with the text from the controller and some dummy data.
      Post newPost = Post(
        author: 'Me',
        content: postController.text,
        likes: 0,
        comments: 0,
      );
      // Add the new post to the beginning of the list.
      posts.insert(0, newPost);
      // Clear the text field.
      postController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social App'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // A text field to create a new post.
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: postController,
              decoration: InputDecoration(
                hintText: 'What\'s on your mind?',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: addPost,
                ),
              ),
            ),
          ),
          // A list view to display the posts.
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                // Get the post at the current index.
                Post post = posts[index];
                // Return a widget to display the post.
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Display the author and the content of the post.
                        Text(
                          '${post.author} posted:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        Text(post.content),
                        SizedBox(height: 8.0),
                        // Display the number of likes and comments on the post.
                        Row(
                          children: [
                            Icon(Icons.thumb_up),
                            SizedBox(width: 4.0),
                            Text('${post.likes}'),
                            SizedBox(width: 16.0),
                            Icon(Icons.comment),
                            SizedBox(width: 4.0),
                            Text('${post.comments}'),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// A class to represent a post in the social app.
class Post {
  final String author; // The name of the author of the post.
  final String content; // The content of the post.
  final int likes; // The number of likes on the post.
  final int comments; // The number of comments on the post.

  Post({
    required this.author,
    required this.content,
    required this.likes,
    required this.comments,
  });
}