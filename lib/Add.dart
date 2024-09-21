import 'package:flutter/material.dart';

void main() {
  runApp(Add());
}

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreatePostPage(),
    );
  }
}

class CreatePostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Create post'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Handle post action
            },
            child: Container(
              height: 30,
              width: 60,
              child: Center(child: Text('POST' , style: TextStyle(color: Colors.white),)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ghz5k2_FGaZ_YcEE4LQWq76tTu4Enlr4cw&s'), // Replace with the actual image URL
            ),
            title: Text('Fatima Jawed'),
            subtitle: Row(
              children: [
                TextButton.icon(
                  icon: Icon(Icons.people , color: Colors.blue,),
                  label: Text('Friends'),
                  onPressed: () {
                    // Handle friends button
                  },
                ),
                SizedBox(width: 10),
                TextButton.icon(
                  icon: Icon(Icons.photo_album , color: Colors.blue, ),
                  label: Text('Album'),
                  onPressed: () {
                    // Handle album button
                  },
                ),
                SizedBox(width: 10),
                TextButton.icon(
                  icon: Icon(Icons.lock , color: Colors.blue, ),
                  label: Text('Off'),
                  onPressed: () {
                    // Handle privacy button
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "What's on your mind?",
                border: InputBorder.none,
              ),
              maxLines: null,
            ),
          ),
          Divider(),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.photo , color: Colors.red,),
                  title: Text('Photo/video'),
                  onTap: () {
                    // Handle photo/video
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person_add , color: Colors.green,),
                  title: Text('Tag people'),
                  onTap: () {
                    // Handle tag people
                  },
                ),
                ListTile(
                  leading: Icon(Icons.emoji_emotions , color: Colors.amberAccent,),
                  title: Text('Feeling/activity'),
                  onTap: () {
                    // Handle feeling/activity
                  },
                ),
                ListTile(
                  leading: Icon(Icons.location_on , color: Colors.redAccent,),
                  title: Text('Check in'),
                  onTap: () {
                    // Handle check in
                  },
                ),
                ListTile(
                  leading: Icon(Icons.videocam , color: Colors.blue,),
                  title: Text('Live video'),
                  onTap: () {
                    // Handle live video
                  },
                ),
                ListTile(
                  leading: Icon(Icons.format_color_fill , color: Colors.deepPurpleAccent,),
                  title: Text('Background color'),
                  onTap: () {
                    // Handle background color
                  },
                ),
                ListTile(
                  leading: Icon(Icons.camera , color: Colors.blue,),
                  title: Text('Camera'),
                  onTap: () {
                    // Handle camera
                  },
                ),
                ListTile(
                  leading: Icon(Icons.gif , color: Colors.grey,),
                  title: Text('GIF'),
                  onTap: () {
                    // Handle GIF
                  },
                ),
                ListTile(
                  leading: Icon(Icons.event , color: Colors.deepOrange,),
                  title: Text('Life event' ,),
                  onTap: () {
                    // Handle life event
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
