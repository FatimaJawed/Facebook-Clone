import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'Add.dart';
import 'Circular.dart';
import 'Search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FacebookHomePage(),
    );
  }
}

class FacebookHomePage extends StatefulWidget {
  const FacebookHomePage({Key? key}) : super(key: key);



  @override
  State<FacebookHomePage> createState() => _FacebookHomePageState();
}

class _FacebookHomePageState extends State<FacebookHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Facebook',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.blueAccent,
          ),
        ),
        actions:  [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Add()),
                );
              },
              child: Icon(Icons.add, color: Colors.blueAccent),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                );
              },
              child: Icon(Icons.search, color: Colors.blueAccent),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.blue,
          tabs: const [
            Tab(icon: Icon(Icons.home, color: Colors.blueAccent)),
            Tab(icon: Icon(Icons.store_mall_directory_rounded, color: Colors.blueAccent)),
            Tab(icon: Icon(Icons.person_add_sharp, color: Colors.blueAccent)),
            Tab(icon: Icon(Icons.person, color: Colors.blueAccent)),
            Tab(icon: Icon(Icons.notifications, color: Colors.blueAccent)),
            Tab(icon: Icon(Icons.menu, color: Colors.blueAccent)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/cat.jpg'),
                        radius: 20,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'What\'s on your mind?',
                              fillColor: Colors.grey[200],
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      PostAction(icon: Icons.videocam, color: Colors.red, label: 'Live video'),
                      PostAction(icon: Icons.photo, color: Colors.green, label: 'Photo/video'),
                      PostAction(icon: Icons.movie, color: Colors.pink, label: 'Reel'),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Divider(color: Colors.grey[300]),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const <Widget>[
                        StoryItem(
                          imageUrl: 'https://t3.ftcdn.net/jpg/07/17/33/40/360_F_717334058_zZu41aMmrR0CvBxI3WLbWRjrqFyLAdW1.jpg',
                          label: 'Create a Story',
                        ),
                        StoryItem(
                          imageUrl: 'https://static.vecteezy.com/system/resources/thumbnails/031/546/559/small_2x/a-cheerful-korean-girl-wearing-hoodie-and-knit-hat-ai-generative-photo.jpg',
                          label: 'Ally',
                        ),
                        StoryItem(
                          imageUrl: 'https://media.glamour.com/photos/5695f475d9dab9ff41b5043e/master/w_1600%2Cc_limit/sex-love-life-blogs-smitten-2012-11-08-1108-robert-pattinson_sm.jpg',
                          label: 'Robert',
                        ),
                        StoryItem(
                          imageUrl: 'https://media.vanityfair.com/photos/66050a8578f6c8e74b372ef6/master/w_2560%2Cc_limit/1398729436',
                          label: 'loki',
                        ),
                        StoryItem(
                          imageUrl: 'https://i.pinimg.com/originals/04/0c/c5/040cc526dd91c7a37e43ef659105ff95.jpg',
                          label: 'Thor',
                        ),
                        StoryItem(
                          imageUrl: 'https://www.blackfilm.com/read/wp-content/uploads/2016/10/Doctor-Strange-premiere-Benedict-Cumberbatch.jpg',
                          label: 'Docter Strange',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Divider(color: Colors.grey[300]),
                  const SizedBox(height: 12),
                  Post(
                    profileImageUrl: 'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg',
                    name: 'Jordan Jones',
                    time: 'Just Now',
                    content: 'My morning routine always starts with a cup of coffee',
                    imageUrl: 'https://scitechdaily.com/images/Drinking-Coffee-Sunrise.jpg',
                    likes: 120,
                    comments: 23,
                  ),
                  Post(
                    profileImageUrl: 'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg',
                    name: 'Alice Smith',
                    time: '1 hr ago',
                    content: 'Had a great day at the beach!',
                    imageUrl: 'https://t4.ftcdn.net/jpg/01/63/58/67/360_F_163586730_6DGv1mQFOR0Pm3SxgpwY6HTCmEw9emFa.jpg',
                    likes: 98,
                    comments: 18,
                  ),
                  Post(
                    profileImageUrl: 'https://img.freepik.com/free-photo/portrait-smiling-young-man_53419-5787.jpg',
                    name: 'John Doe',
                    time: '2 hrs ago',
                    content: 'Just finished a 5k run!',
                    imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/running-is-one-of-the-best-ways-to-stay-fit-royalty-free-image-1036780592-1553033495.jpg?crop=0.668xw:1.00xh;0.260xw,0&resize=1200:*',
                    likes: 142,
                    comments: 37,
                  ),
                  Post(
                    profileImageUrl: 'https://img.freepik.com/free-photo/smiling-young-man_53419-587.jpg',
                    name: 'Emma Wilson',
                    time: '3 hrs ago',
                    content: 'Loving the new restaurant downtown!',
                    imageUrl: 'https://miro.medium.com/v2/resize:fit:1400/0*OuSIEprF8jIzBc4g',
                    likes: 85,
                    comments: 24,
                  ),
                  Post(
                    profileImageUrl: 'https://img.freepik.com/free-photo/young-man-smiling_53419-387.jpg',
                    name: 'Michael Brown',
                    time: '4 hrs ago',
                    content: 'Beautiful hike in the mountains today!',
                    imageUrl: 'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
                    likes: 112,
                    comments: 29,
                  ),
                  Post(
                    profileImageUrl: 'https://img.freepik.com/free-photo/portrait-smiling-young-man_53419-5788.jpg',
                    name: 'Sophia Davis',
                    time: '5 hrs ago',
                    content: 'Exploring the city!',
                    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Bank_junction_-_2020-09-20_%282%29.jpg/640px-Bank_junction_-_2020-09-20_%282%29.jpg',
                    likes: 76,
                    comments: 15,
                  ),
                  Post(
                    profileImageUrl: 'https://img.freepik.com/free-photo/portrait-young-man_53419-5782.jpg',
                    name: 'James Johnson',
                    time: '6 hrs ago',
                    content: 'Reading a great book!',
                    imageUrl: 'https://images.unsplash.com/photo-1529156069898-49953e39b3ac',
                    likes: 103,
                    comments: 21,
                  ),
                  Post(
                    profileImageUrl: 'https://img.freepik.com/free-photo/smiling-young-man_53419-385.jpg',
                    name: 'Isabella White',
                    time: '7 hrs ago',
                    content: 'Enjoying a cup of tea!',
                    imageUrl: 'https://images.unsplash.com/photo-1517685352821-92cf88aee5a5',
                    likes: 94,
                    comments: 19,
                  ),
                  Post(
                    profileImageUrl: 'https://img.freepik.com/free-photo/handsome-man-smiling_53419-369.jpg',
                    name: 'William Moore',
                    time: '8 hrs ago',
                    content: 'Playing guitar!',
                    imageUrl: 'https://stuff.fendergarage.com/images/h/6/W/fend_play-beghub-04-hero3-dsk-960x960.jpg',
                    likes: 87,
                    comments: 13,
                  ),
                  Post(
                    profileImageUrl: 'https://img.freepik.com/free-photo/young-man-smiling_53419-387.jpg',
                    name: 'Olivia Brown',
                    time: '9 hrs ago',
                    content: 'Working on a new project!',
                    imageUrl: 'https://images.unsplash.com/photo-1504384308090-c894fdcc538d',
                    likes: 128,
                    comments: 26,
                  ),
                ],
              ),
            ),
          ),


          SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(
          'Marketplace',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Padding(
          padding: const EdgeInsets.only(left: 150),
          child: Icon(Icons.person),
          ),
          Icon(Icons.search),
          ],
          ),
          SizedBox(height: 10), // Add some spacing if needed
    Row(
    children: [
    ElevatedButton(
    onPressed: () {
    // Handle first button press
    },
    style: ElevatedButton.styleFrom(
    foregroundColor: Colors.black,
    backgroundColor: Colors.white30, // Text color
    ),
    child: Text('Sell', style: TextStyle(fontSize: 30)),
    ),
    SizedBox(
    width: 15,
    ),
    ElevatedButton(
    onPressed: () {
    // Handle second button press
    },
    style: ElevatedButton.styleFrom(
    foregroundColor: Colors.black,
    backgroundColor: Colors.white30, // Text color
    ),
    child: Text('Categories', style: TextStyle(fontSize: 30)),
    ),
    ],
    ),
    const SizedBox(height: 5),
    Divider(color: Colors.grey[300]),
    const SizedBox(height: 3),
    Row(
    children: [
    Text(
    "Today's picks",
    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    SizedBox(width: 105),
    Text(
    "Karachi Pakistan",
    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
    ),
    ],
    ),
    const SizedBox(height: 10),
            GridView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 8.0,
    mainAxisSpacing: 8.0,
    childAspectRatio: 1.0,
    ),

    itemCount: 2, // Adjust based on the number of items
    itemBuilder: (context, index) {
    return GridTile(
    child: Column(
    children: [
    Expanded(
    child: Image.network(
    'https://suzukipakistan.com/media/products/GS%20150/GS%20150%20Product%20Card.webp', // Replace with your image URL
    fit: BoxFit.cover,
    ),
    ),
    Text(
    'Suzuki ...', // Replace with your item description
    style: TextStyle(fontSize: 16),
    textAlign: TextAlign.center,
    ),
    ],
    ),
    );
    },
    ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 1.0,
              ),
              itemCount: 2, // Adjust based on the number of items
              itemBuilder: (context, index) {
                return GridTile(
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(
                          'https://www.carandbike.com/_next/image?url=https%3A%2F%2Fimages.carandbike.com%2Fbike-images%2Fbig%2Fsuzuki%2Faccess-125%2Fsuzuki-access-125.jpg%3Fv%3D38&w=3840&q=25', // Replace with your image URL
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Suzuki ...', // Replace with your item description
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 1.0,
              ),
              itemCount: 2, // Adjust based on the number of items
              itemBuilder: (context, index) {
                return GridTile(
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(
                          'https://www.gari.pk/images/news/2023-05/2436_1_88917.jpg', // Replace with your image URL
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Suzuki ...', // Replace with your item description
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 1.0,
              ),
              itemCount: 2, // Adjust based on the number of items
              itemBuilder: (context, index) {
                return GridTile(
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(
                          'https://static.autox.com/uploads/bikes/2023/03/suzuki-access-125.jpg', // Replace with your image URL
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Suzuki ...', // Replace with your item description
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
    ],
    ),
    ),
    ),



    SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 6),
                  child: Text(
                    'Friends',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                      ),
                      child: Text('Suggestion'),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                      ),
                      child: Text('Your Friends'),
                    ),
                  ],
                ),

                Divider(color: Colors.grey[300]),
                const SizedBox(height: 12),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Text('Friend request 2' , style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold),),
                ),
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    ),
                    title: Text('Karan'),
                    subtitle: Text('2 mutual friend'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Confirm request'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Delete'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),





                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzaMqZ-aQMaF4eYyJ7ajtJ0QG1jQf6RrXXQw&s'),
                    ),
                    title: Text('orry jones'),
                    subtitle: Text('5 mutual friend'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Confirm request'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Delete'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),

                const SizedBox(height: 12),
                Divider(color: Colors.grey[300]),
                const SizedBox(height: 12),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/005/346/410/small_2x/close-up-portrait-of-smiling-handsome-young-caucasian-man-face-looking-at-camera-on-isolated-light-gray-studio-background-photo.jpg'),
                    ),
                    title: Text('James Smith'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),

                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://img.freepik.com/free-photo/handsome-bearded-guy-posing-against-white-wall_273609-20597.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1720483200&semt=sph'),
                    ),
                    title: Text('John Johnson'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),


                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcm0zMjgtMzY2LXRvbmctMDhfMS5qcGc.jpg'),
                    ),
                    title: Text('Robert Brown'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),

                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/672444/pexels-photo-672444.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    ),
                    title: Text('Amelia Green'
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),


                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://img.freepik.com/free-photo/portrait-blonde-woman-looking-photographer_23-2148348970.jpg'),
                    ),
                    title: Text('Harper Taylor'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),



                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://i.ytimg.com/vi/x_HL0wiK4Zc/maxresdefault.jpg'),
                    ),
                    title: Text('Michael Clark'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),


                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Method_Man_at_Shattuck_Down_Low.jpg/640px-Method_Man_at_Shattuck_Down_Low.jpg'),
                    ),
                    title: Text('James White'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),


                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://media.istockphoto.com/id/174772008/photo/fashion-man.jpg?s=612x612&w=0&k=20&c=m4TIiXmPCyCOY4iJrP5bjmYPSykJzbN4L2j6h38f6Qo='),
                    ),
                    title: Text('William Lewis'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),


                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/8/86/Woman_at_Lover%27s_Bridge_Tanjung_Sepat_%28cropped%29.jpg'),
                    ),
                    title: Text('Amelia Green'
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),



                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdiUD6LCWqcAMikbLa_kC_6uBWVtikdO-_wDKxpmlXnLLM4n39BDkFFMlJqrSq1HiIEx4&usqp=CAU'),
                    ),
                    title: Text('Henry Walker'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),


                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://img.freepik.com/free-photo/young-beautiful-woman-pink-warm-sweater-natural-look-smiling-portrait-isolated-long-hair_285396-896.jpg'),
                    ),
                    title: Text('Ella Wright'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),


                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://citinewsroom.com/wp-content/uploads/2023/10/WhatsApp-Image-2023-10-28-at-18.05.06_69693459-e1698675096420.jpg'),
                    ),
                    title: Text('Charlotte Harris'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),


                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/2272853/pexels-photo-2272853.jpeg?cs=srgb&dl=pexels-manei-2272853.jpg&fm=jpg'),
                    ),
                    title: Text('Isabella '),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),


                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/1181391/pexels-photo-1181391.jpeg?cs=srgb&dl=pexels-divinetechygirl-1181391.jpg&fm=jpg'),
                    ),
                    title: Text('xobet james'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),


                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://media.istockphoto.com/id/1987655119/photo/smiling-young-businesswoman-standing-in-the-corridor-of-an-office.jpg?b=1&s=170667a&w=0&k=20&c=hsu99ZHwclveikXrWEYnUJBRGL84xAHZtdE6qMG1Bf8='),
                    ),
                    title: Text('Sophia Wilson'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),


                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://img.freepik.com/free-photo/smiley-man-holding-camera-front-view_23-2149915895.jpg?size=626&ext=jpg&ga=GA1.1.553209589.1714608000&semt=ais'),
                    ),
                    title: Text('Daniel Johnson'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),


                SizedBox(height: 10,),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                  children: List.generate(1, (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi7b1zc_A31guhiekevqS-SMdxSVNzLvll08tMguDyriojRU3JMB0vqzp2ExNIDbGMY9M&usqp=CAU'),
                    ),
                    title: Text('Benjamin Harrison'
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle first button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                          ),
                          child: Text('Add Friend'),
                        ),
                        SizedBox(width: 8), // Adjust the spacing between buttons
                        ElevatedButton(
                          onPressed: () {
                            // Handle second button press
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black, backgroundColor: Colors.white70, // Text color
                          ),
                          child: Text('Remove'), // Example of second button text
                        ),
                      ],
                    ),
                    onTap: () {
                      // Handle tile tap
                    },
                  )),
                ),



              ],
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50), // Adjusted padding value
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.network(
                          'https://c02.purpledshub.com/uploads/sites/48/2023/02/why-sky-blue-2db86ae.jpg?w=1200',
                          width: MediaQuery.of(context).size.width,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: -50,
                          left: MediaQuery.of(context).size.width / 2 - 80,
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage('assets/cat.jpg'), // Replace with your image URL
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10), // To provide space for the profile image
                  Text(
                    "Fatima Jawed",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Here we go again",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                        ),
                        child: Text("Add to story"),
                      ),
                      SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white70,
                        ),
                        child: Text("Edit profile"),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Lives in Karachi, Pakistan'),
                  ),
                  ListTile(
                    leading: Icon(Icons.computer),
                    title: Text('Flutter Developer'),
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text('See your About info'),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 30,
                        width: 400,
                        child: Center(
                          child: Text(
                            'Edit public details',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Friend',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Find Friend',
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 355),
                        child: Text(
                          '18 friends',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://static.vecteezy.com/system/resources/thumbnails/026/829/465/small_2x/beautiful-girl-with-autumn-leaves-photo.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Melody Mia'),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://t4.ftcdn.net/jpg/03/26/98/51/360_F_326985142_1aaKcEjMQW6ULp6oI9MYuv8lN9f8sFmj.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('James Smith'),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGgaVu5YaKvxLe4N1CiabR2MgwLhN_XXI1rw&s'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Eman Willan'),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv_hGYmCwCT-x-LSRZ-KASb2ZeM-xP4TpZfw&s'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Olivia Martinez'),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://t3.ftcdn.net/jpg/03/56/28/74/360_F_356287405_NUdJBwZLgv9wd8vZaylMqA4WOM9dAQDO.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Ehane brown'),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 130,
                              width: 130,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsNWPhXbh68-pBV7iNSR76TAgOVQRSqkuogA&s'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text('Ava Taylor'),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 35,
                    width: 400,
                    child: Center(
                      child: Text(
                        'Ses all friends ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),


                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    children: [
                      Container(
                        width: 423.3,
                        height: 7.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Post',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Filters',
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),

                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(), // Disable ListView scrolling
                    children: List.generate(1, (index) => ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/cat.jpg'),
                      ),
                      title: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'What\'s on your mind?',
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                        children: [
                         Icon(Icons.photo_album_rounded , color: Colors.green, size: 30,), // Adjust the spacing between buttons
                        ],
                      ),
                      onTap: () {
                        // Handle tile tap
                      },
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.photo_camera_back_sharp , color: Colors.red,),
                        Icon(Icons.video_call_rounded , color: Colors.red,),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 423.3,
                        height: 1.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),

                  SizedBox(
                    height: 15,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 35,
                    width: 400,
                    child: Center(
                      child: Text(
                        'Ses all friends ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),


                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    children: [
                      Container(
                        width: 423.3,
                        height: 7.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),

                  Post(
                    profileImageUrl: 'https://t3.ftcdn.net/jpg/07/17/33/40/360_F_717334058_zZu41aMmrR0CvBxI3WLbWRjrqFyLAdW1.jpg',
                    name: 'Olivia Brown',
                    time: '1 week ago',
                    content: 'Working on a new project!',
                    imageUrl: 'https://images.unsplash.com/photo-1510751007277-36932aac9ebd?fm=jpg&w=3000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d29tYW4lMjBjb2Rpbmd8ZW58MHx8MHx8fDA%3D',
                    likes: 18,
                    comments: 5,
                  ),



                  Post(
                    profileImageUrl: 'https://t3.ftcdn.net/jpg/07/17/33/40/360_F_717334058_zZu41aMmrR0CvBxI3WLbWRjrqFyLAdW1.jpg',
                    name: 'Fatima Jawed',
                    time: '3 week ago',
                    content: 'the view 💖💖💖',
                    imageUrl: 'https://w0.peakpx.com/wallpaper/473/515/HD-wallpaper-awesome-nature-best-nature-cool-nature-nice-view-sunset.jpg',
                    likes: 13,
                    comments: 8,
                  ),


                  Post(
                    profileImageUrl: 'https://t3.ftcdn.net/jpg/07/17/33/40/360_F_717334058_zZu41aMmrR0CvBxI3WLbWRjrqFyLAdW1.jpg',
                    name: 'Fatima Jawed',
                    time: '1 month ago',
                    content: 'From the window of an airplane',
                    imageUrl: 'https://img.freepik.com/premium-photo/view-from-airplane-window-flying-sea-sunset_105751-9624.jpg?w=360',
                    likes: 20,
                    comments: 8,
                  ),

    const ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('assets/cat.jpg'),
      radius: 21, // You can adjust the radius as needed
    ),

      title: Text('Fatima Jawed is in \ karachi '),
    subtitle: Text('1 year ago'),
    trailing: Icon(Icons.more_horiz),
    ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home , color: Colors.blue , size: 40,),

                      Text('Moved to Karachi, Pakistan' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
                      Text('2022'),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.thumb_up, color: Colors.grey),
                                const SizedBox(width: 5),
                                Text('5'),
                                const SizedBox(width: 10),
                                const Icon(Icons.comment, color: Colors.grey),
                                const SizedBox(width: 5),
                                Text('3 comments'),
                              ],
                            ),
                            IconButton(
                              icon: Icon(Icons.share),
                              onPressed: (){},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 423.3,
                        height: 1.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/cat.jpg'),
                      radius: 21, // You can adjust the radius as needed
                    ),

                    title: Text('Fatima Jawed is in \ karachi '),
                    subtitle: Text('1 year ago'),
                    trailing: Icon(Icons.more_horiz),
                  ),

                  Container(
                    height: 400,
                    width: 400,
                    child: Image(image: AssetImage('assets/cat.jpg')
                    ),
                  ),

                  Row(
                    children: [
                      Container(
                        width: 423.3,
                        height: 50.0,
                        color: Colors.grey,
                        child: Center(child: Text('No posts available' , style: TextStyle(color: Colors.black),)),
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),


    SingleChildScrollView(
      child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(
      'Notification',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Icon(Icons.search, size: 30),
      ],
      ),
      SizedBox(height: 20), // Adding some space between the Row and the Column
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
      'New',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black , fontSize: 18),
      ),
        SizedBox(height: 20,),
      
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              radius: 30,
            ),
            const SizedBox(width: 10),
            Text('Karan sent you a friend request' , style: TextStyle(fontSize: 17),),
            SizedBox(width: 105,),
            Icon(Icons.more_horiz),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_640.jpg'),
              radius: 30,
            ),
            const SizedBox(width: 5),
            Text('Orry jones sent you a friend request' , style: TextStyle(fontSize: 17),),
            SizedBox(width: 80,),
            Icon(Icons.more_horiz),
          ],
        ),
        SizedBox(
          height: 20,
        ),

        Text('Earlier' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),


        SizedBox(height: 10,),
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://www.byrdie.com/thmb/JSZ340tUwVXDaT7kw9Ww7G5AQGc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/cdn.cliqueinc.com__cache__posts__235356__french-makeup-tips-235356-1505274477380-main.700x0c-b4313126eabe4de590e39ba0ae758ee2.jpg'),
              radius: 30,
            ),
            const SizedBox(width: 10),
            Text('Emily Johnson liked your photo.' , style: TextStyle(fontSize: 17),),
            SizedBox(width: 100,),
            Icon(Icons.more_horiz),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://img.freepik.com/free-photo/bearded-man-with-striped-shirt_273609-7180.jpg'),
              radius: 30,
            ),
            const SizedBox(width: 5),
            Text('Michael Brown reacted to your post' , style: TextStyle(fontSize: 17),),
            SizedBox(width: 80,),
            Icon(Icons.more_horiz),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/screen-shot-2020-05-15-at-2-27-12-pm-1589567253.png'),
              radius: 30,
            ),
            const SizedBox(width: 5),
            Text("Sarah commented on your post " , style: TextStyle(fontSize: 17),),
            SizedBox(width: 105,),
            Icon(Icons.more_horiz),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGj8S7IzbowjIONGEoZfh6jiG25kNB3GQRWw&s'),
              radius: 30,
            ),
            const SizedBox(width: 5),
            Text('David commented on your video' , style: TextStyle(fontSize: 17),),
            SizedBox(width: 100,),
            Icon(Icons.more_horiz),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThPWd8hWR2_D2VAiVXVcEtBk1HowF5gHXPwQ&s'),
              radius: 30,
            ),
            const SizedBox(width: 5),
            Text('You were tagged in a photo by Chris Green' , style: TextStyle(fontSize: 17),),
            SizedBox(width: 30,),
            Icon(Icons.more_horiz),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://thelead.uk/sites/default/files/2022-12/IMG-20221206-WA0051-01-01.jpeg'),
              radius: 30,
            ),
            const SizedBox(width: 5),
            Text('Alice Taylor posted in Flutter group' , style: TextStyle(fontSize: 17),),
            SizedBox(width: 80,),
            Icon(Icons.more_horiz),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyUJUOBJVJONaLArmKTEQ6HuNRMyZRDugtyg&s'),
              radius: 30,
            ),
            const SizedBox(width: 5),
            Text('New update from The Gardening Hub' , style: TextStyle(fontSize: 17),),
            SizedBox(width: 70,),
            Icon(Icons.more_horiz),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://m.media-amazon.com/images/M/MV5BMTU0MTQ4OTMyMV5BMl5BanBnXkFtZTcwMTQxOTY1NA@@._V1_.jpg'),
              radius: 30,
            ),
            const SizedBox(width: 5),
            Text("It's Mark Davis's birthday today. 🍰" , style: TextStyle(fontSize: 17),),
            SizedBox(width: 85,),
            Icon(Icons.more_horiz),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/07/17/33/40/360_F_717334058_zZu41aMmrR0CvBxI3WLbWRjrqFyLAdW1.jpg'),
              radius: 30,
            ),
            const SizedBox(width: 5),
            Text('Look back at your memories from last year' , style: TextStyle(fontSize: 17),),
            SizedBox(width: 23,),
            Icon(Icons.more_horiz),
          ],
        ),
        SizedBox(
          height: 20,
        ),

      
        // You can add more widgets here
      ],
      ),
      ],
      ),
      ),
    ),


      SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(
            'Menu',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            IconButton(
            icon: Padding(
        padding: const EdgeInsets.only(left: 210),
        child: Icon(Icons.person),
            ),
            onPressed: () {
            // Handle icon button tap
            },
            ),
            IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
            // Handle search button tap
            },
            ),
            ],
            ),
            SizedBox(height: 10),
        Divider(),
            ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
            children: [
            CircleAvatar(
            backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/07/17/33/40/360_F_717334058_zZu41aMmrR0CvBxI3WLbWRjrqFyLAdW1.jpg'),
            radius: 30,
            ),
            SizedBox(width: 10),
            Text(
            'Fatima Jawed',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
        SizedBox(width: 150,),
        Icon(Icons.loop),
        SizedBox(width: 5,),
        Icon(Icons.keyboard_arrow_down_outlined),
            ],
            ),
            ),
            Divider(),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
            'Your shortcuts',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ),
            Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/1b/d8/10/1bd81060-6876-a456-c3c3-bac7122bf180/AppIcon-0-0-1x_U007emarketing-0-7-0-sRGB-85-220.png/1200x600wa.png'),
            radius: 30,
          ),
          SizedBox(width: 7,),

          CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmuOKO0X-ovsIRIugxLnGkEOnCbZUuLk_zjQ&s'),
            radius: 30,
          ),
          SizedBox(width: 8,),

          CircleAvatar(
            backgroundImage: NetworkImage('https://static1.howtogeekimages.com/wordpress/wp-content/uploads/2021/08/instagram_hero_1200_675.png'),
            radius: 30,
          ),
          SizedBox(width: 8,),

          CircleAvatar(
            backgroundImage: NetworkImage('https://cdn.mos.cms.futurecdn.net/z3bn6deaxmrjmQHNEkpcZE-1200-80.jpg'),
            radius: 30,
          ),
          SizedBox(width: 8,),

          CircleAvatar(
            backgroundImage: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/e9/21/a8/e921a8d6-e8d0-fe53-b500-224ae8936e97/AppIcon_TikTok-0-0-1x_U007epad-0-0-0-85-220.png/1200x600wa.png'),
            radius: 30,
          ),
          SizedBox(width: 8,),

          CircleAvatar(
            backgroundImage: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/dc/78/f4/dc78f41e-e3e8-fc7a-02ae-00e631c04e63/AppIcon-0-0-1x_U007ephone-0-0-85-220.png/1200x630wa.png'),
            radius: 30,
          ),
          SizedBox(width: 8,),
          SizedBox(height: 8,),
        ],
            ),
        SizedBox(height: 18,),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 190,
                  decoration: BoxDecoration(
                      boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),  // Adjust padding as needed
                        child: Icon(
                          Icons.memory, color: Colors.blue,
                          size: 35,
                        ),
                      ),
                      SizedBox(width: 10),  // Space between icon and text
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'Memories',
                          style: TextStyle(
                            fontSize: 15,  // Adjust font size as needed
                            color: Colors.black,  // Adjust text color as needed
                          ),
                        ),
                      ),
                    ],
                  ),

                ),


                SizedBox(width: 20,),

                Container(
                  height: 70,
                  width: 190,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),  // Adjust padding as needed
                        child: Icon(
                          Icons.save_as, color: Colors.blue,
                          size: 35,
                        ),
                      ),
                      SizedBox(width: 10),  // Space between icon and text
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          'Saved',
                          style: TextStyle(
                            fontSize: 15,  // Adjust font size as needed
                            color: Colors.black,  // Adjust text color as needed
                          ),
                        ),
                      ),
                    ],
                  ),

                ),



              ],
            ),
              SizedBox(height: 15,),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 190,
                      decoration: BoxDecoration(
                          boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),  // Adjust padding as needed
                            child: Icon(
                              Icons.group, color: Colors.blue,
                              size: 35,
                            ),
                          ),
                          SizedBox(width: 10),  // Space between icon and text
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              'Groups',
                              style: TextStyle(
                                fontSize: 15,  // Adjust font size as needed
                                color: Colors.black,  // Adjust text color as needed
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),


                    SizedBox(width: 20,),

                    Container(
                      height: 70,
                      width: 190,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),  // Adjust padding as needed
                            child: Icon(
                              Icons.video_camera_front_outlined, color: Colors.blue,
                              size: 35,
                            ),
                          ),
                          SizedBox(width: 10),  // Space between icon and text
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              'Video',
                              style: TextStyle(
                                fontSize: 15,  // Adjust font size as needed
                                color: Colors.black,  // Adjust text color as needed
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 15,),

                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 190,
                      decoration: BoxDecoration(
                          boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),  // Adjust padding as needed
                            child: Icon(
                              Icons.store, color: Colors.blue,
                              size: 35,
                            ),
                          ),
                          SizedBox(width: 10),  // Space between icon and text
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              'Marketplaces',
                              style: TextStyle(
                                fontSize: 15,  // Adjust font size as needed
                                color: Colors.black,  // Adjust text color as needed
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),


                    SizedBox(width: 20,),

                    Container(
                      height: 70,
                      width: 190,
                      decoration: BoxDecoration(
                          boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),  // Adjust padding as needed
                            child: Icon(
                              Icons.person_search, color: Colors.blue,
                              size: 35,
                            ),
                          ),
                          SizedBox(width: 10),  // Space between icon and text
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              'Find friends',
                              style: TextStyle(
                                fontSize: 15,  // Adjust font size as needed
                                color: Colors.black,  // Adjust text color as needed
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 190,
                      decoration: BoxDecoration(
                          boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),  // Adjust padding as needed
                            child: Icon(
                              Icons.feed, color: Colors.blue,
                              size: 35,
                            ),
                          ),
                          SizedBox(width: 10),  // Space between icon and text
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              'Feeds',
                              style: TextStyle(
                                fontSize: 15,  // Adjust font size as needed
                                color: Colors.black,  // Adjust text color as needed
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),


                    SizedBox(width: 20,),

                    Container(
                      height: 70,
                      width: 190,
                      decoration: BoxDecoration(
                          boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),  // Adjust padding as needed
                            child: Icon(
                              Icons.event, color: Colors.blue,
                              size: 35,
                            ),
                          ),
                          SizedBox(width: 10),  // Space between icon and text
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              'Events',
                              style: TextStyle(
                                fontSize: 15,  // Adjust font size as needed
                                color: Colors.black,  // Adjust text color as needed
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 15,),

                Container(
                    height: 50,
                  width: 400,
                    child: Center(child: Text('See more')),
                  decoration: BoxDecoration(
                      color: Colors.grey[350],

                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                SizedBox(height: 15,),

                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.help , color: Colors.black, size: 30,),
                    Padding(
                      padding: const EdgeInsets.only(right: 230),
                      child: Text("Help and Support"),
                    ),
                    Icon(Icons.arrow_drop_down_sharp , color: Colors.black, size: 30,),


                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.settings , color: Colors.black, size: 30,),
                    Padding(
                      padding: const EdgeInsets.only(right: 230),
                      child: Text("Setting and privacy"),
                    ),
                    Icon(Icons.arrow_drop_down_sharp , color: Colors.black, size: 30,),


                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.gamepad , color: Colors.black, size: 30,),
                    Padding(
                      padding: const EdgeInsets.only(right: 230),
                      child: Text("Also from Meta"),
                    ),
                    Icon(Icons.arrow_drop_down_sharp , color: Colors.black, size: 30,),

                  ],
                ),
                Divider(),
                SizedBox(height: 15,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Circular()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 400,
                    child: Center(child: Text('Log out')),
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                SizedBox(height: 15,),


              ],
            ),




            // Additional ListView children can be added here
            ],
            ),
            ],
            ),
            ),
      )

    ])
    );
  }
}

class StoryItem extends StatelessWidget {
  final String imageUrl;
  final String label;

  const StoryItem({required this.imageUrl, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 160,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class PostAction extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  const PostAction({required this.icon, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}

class Post extends StatefulWidget {
  final String profileImageUrl;
  final String name;
  final String time;
  final String content;
  final String imageUrl;
  final int likes;
  final int comments;

  const Post({
    required this.profileImageUrl,
    required this.name,
    required this.time,
    required this.content,
    required this.imageUrl,
    required this.likes,
    required this.comments,
  });

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isLiked = false;
  int likeCount = 0;
  List<String> comments = [];
  final TextEditingController _commentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    likeCount = widget.likes;
  }

  void _toggleLike() {
    setState(() {
      isLiked = !isLiked;
      likeCount += isLiked ? 1 : -1;
    });
  }

  void _addComment() {
    setState(() {
      comments.add(_commentController.text);
      _commentController.clear();
    });
  }

  void _share() {
    Share.share(widget.content);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(widget.profileImageUrl),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(widget.time),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(widget.content),
          const SizedBox(height: 10),
          if (widget.imageUrl.isNotEmpty)
            Image.network(
              widget.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.thumb_up, color: isLiked ? Colors.blue : Colors.grey),
                  const SizedBox(width: 5),
                  Text('$likeCount'),
                  const SizedBox(width: 10),
                  const Icon(Icons.comment, color: Colors.grey),
                  const SizedBox(width: 5),
                  Text('${comments.length} comments'),
                ],
              ),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: _share,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextButton.icon(
                icon: Icon(Icons.thumb_up, color: isLiked ? Colors.blue : Colors.grey),
                label: const Text('Like'),
                onPressed: _toggleLike,
              ),
              TextButton.icon(
                icon: const Icon(Icons.comment, color: Colors.grey),
                label: const Text('Comment'),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              controller: _commentController,
                              decoration: InputDecoration(
                                labelText: 'Write a comment...',
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.send),
                                  onPressed: _addComment,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
          const Divider(),
          ...comments.map((comment) => ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/07/17/33/40/360_F_717334058_zZu41aMmrR0CvBxI3WLbWRjrqFyLAdW1.jpg'),
            ),
            title: Text(comment),
          )),
        ],
      ),
    );
  }
}






