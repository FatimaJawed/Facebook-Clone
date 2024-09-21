import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2.0,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Text('Recent', style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: Text('See all', style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                    ),
                  ],
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO0BTzUCIO0dQV0eoAuOqR3yhiWYFKNFm7Dg&s')
                  ),
                  title: Text('Robert Pattinson'),
                  trailing: Icon(Icons.more_vert),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.hussainrehar.com/cdn/shop/products/aa_800x.jpg?v=1621255963') // Replace with your image path
                  ),
                  title: Text('Hania Amir'),
                  trailing: Icon(Icons.more_vert),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBgjfXhLFiTbASWw6Wz6o3ySlPhHPJdWis8A&s')
                  ),
                  title: Text('Flutter groups'),
                  trailing: Icon(Icons.more_vert),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHdLZAJzeEA2iYjsrN4CEXrg8ATQ1tB04blQ&s')
                  ),
                  title: Text('John Doe'),
                  trailing: Icon(Icons.more_vert),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYKgJP122dFgBUg2oRKOOP-wPWarb7QvnLwg&s')
                  ),
                  title: Text('Best pakistani restaurants near me'),
                  trailing: Icon(Icons.more_vert),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhwy2VtlFEXpBwDP1mGvTGQvbWDSUn05DqoZQftRHNJmXJ2QDsIkMQpI3JyIpVjJduCwyZXBaDB9OwZ3fBrO2xoo9dTUC68R5zBkZ5QYFoD6e7DDtdjvQ30Dd_HW0BTtvFDK_Oesed9OkONEWZaGqJpi99mlNf3-fdmwl7Z9zJ6cVs4dulSXks6dyNSUKk/s480/IMG_1718993314917.webp')
                  ),
                  title: Text('2024 World Cup highlights'),
                  trailing: Icon(Icons.more_vert),
                ),

                Divider(),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://image.cnbcfm.com/api/v1/image/107238183-1683642530891-All-New_Ford_Ranger_Raptor_12.jpg?v=1684584001&w=1600&h=900')
                  ),
                  title: Text('fords car 2024'),
                  trailing: Icon(Icons.more_vert),
                ),

                Divider(),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://bestfriends.org/sites/default/files/styles/hero_mobile/public/hero-dash/Asana3808_Dashboard_Standard.jpg?h=ebad9ecf&itok=cWevo33k')
                  ),
                  title: Text('Cat videos'),
                  trailing: Icon(Icons.more_vert),
                ),

                Divider(),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFl1aKAEom5D4KLkn9OYK0ZCES8HxA7dZcrg&s')
                  ),
                  title: Text('Inspirational quotes'),
                  trailing: Icon(Icons.more_vert),
                ),

                Divider(),
                ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/premium-psd/sunny-rainy-cloudy-day-weather-forecast-icon-illustration_47987-10693.jpg')
                  ),
                  title: Text('Weather forecast'),
                  trailing: Icon(Icons.more_vert),
                ),
                Divider(),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('More to try on Facebook', style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20), // same as child container
                        ),
                        child: Container(
                          height: 70,
                          width: 190,
                          decoration: BoxDecoration(
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
                                  'Marketplace',
                                  style: TextStyle(
                                    fontSize: 15,  // Adjust font size as needed
                                    color: Colors.black,  // Adjust text color as needed
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20), // same as child container
                        ),
                        child: Container(
                          height: 70,
                          width: 190,
                          decoration: BoxDecoration(
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
                                  'groups',
                                  style: TextStyle(
                                    fontSize: 15,  // Adjust font size as needed
                                    color: Colors.black,  // Adjust text color as needed
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20), // same as child container
                            ),
                            child: Container(
                              height: 70,
                              width: 190,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),  // Adjust padding as needed
                                    child: Icon(
                                      Icons.video_camera_back_outlined, color: Colors.redAccent,
                                      size: 35,
                                    ),
                                  ),
                                  SizedBox(width: 10),  // Space between icon and text
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text(
                                      'Reels',
                                      style: TextStyle(
                                        fontSize: 15,  // Adjust font size as needed
                                        color: Colors.black,  // Adjust text color as needed
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20), // same as child container
                            ),
                            child: Container(
                              height: 70,
                              width: 190,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),  // Adjust padding as needed
                                    child: Icon(
                                      Icons.save_rounded, color: Colors.purple,
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }


  void main() {
    runApp(MaterialApp(
      home: Search(),
    ));
  }
}
