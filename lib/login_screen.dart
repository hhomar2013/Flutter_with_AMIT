import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:
        Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 20,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://4kwallpapers.com/images/walls/thumbs_3t/13511.jpeg'),
              radius: 20,

            ),
            SizedBox(width: 10,),
            Text('Chats',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35
            ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){
            print('Camera pressed');
          },
            icon: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.1),
              child: const Icon(
                Icons.camera_alt,
                size: 18,
                color: Colors.black,
              ),
            ),
          ),
          IconButton(onPressed: (){
            print('Create pressed');
          },
          icon: CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.1),
            child: const Icon(
              Icons.edit,
              size: 18,
              color: Colors.black,
            ),
          ),
          )

        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 2),
                hintText: 'Search',
                constraints: const BoxConstraints(
                  maxHeight: 33,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(35.5),
                  ),
                fillColor: Colors.grey.withOpacity(0.1),
                filled: true
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 63,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://4kwallpapers.com/images/walls/thumbs_3t/4788.jpeg',),
                              radius: 27,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8,
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Omar Mohamed Mahgoub Mohamed",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 63,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://4kwallpapers.com/images/walls/thumbs_3t/4788.jpeg',),
                              radius: 27,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8,
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Omar Mohamed Mahgoub Mohamed",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 63,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://4kwallpapers.com/images/walls/thumbs_3t/4788.jpeg',),
                              radius: 27,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8,
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Omar Mohamed Mahgoub Mohamed",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 63,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://4kwallpapers.com/images/walls/thumbs_3t/4788.jpeg',),
                              radius: 27,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8,
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Omar Mohamed Mahgoub Mohamed",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 63,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://4kwallpapers.com/images/walls/thumbs_3t/4788.jpeg',),
                              radius: 27,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8,
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Omar Mohamed Mahgoub Mohamed",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 63,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://4kwallpapers.com/images/walls/thumbs_3t/4788.jpeg',),
                              radius: 27,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8,
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Omar Mohamed Mahgoub Mohamed",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 63,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://4kwallpapers.com/images/walls/thumbs_3t/4788.jpeg',),
                              radius: 27,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8,
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Omar Mohamed Mahgoub Mohamed",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 63,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://4kwallpapers.com/images/walls/thumbs_3t/4788.jpeg',),
                              radius: 27,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8,
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Omar Mohamed Mahgoub Mohamed",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 63,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://4kwallpapers.com/images/walls/thumbs_3t/4788.jpeg',),
                              radius: 27,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8,
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Omar Mohamed Mahgoub Mohamed",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 63,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://4kwallpapers.com/images/walls/thumbs_3t/4788.jpeg',),
                              radius: 27,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8,
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Omar Mohamed Mahgoub Mohamed",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 63,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://4kwallpapers.com/images/walls/thumbs_3t/4788.jpeg',),
                              radius: 27,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8,
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Omar Mohamed Mahgoub Mohamed",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 63,
                    child: const Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://4kwallpapers.com/images/walls/thumbs_3t/4788.jpeg',),
                              radius: 27,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 8,
                            )
                          ],
                        ),
                        SizedBox(width: 5,),
                        Text("Omar Mohamed Mahgoub Mohamed",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              height: double.maxFinite,
              child: ListView.separated(
                separatorBuilder: (context,index)  => SizedBox(height: 15,),
                itemBuilder: (context,index) =>  buildChatItem(),
                itemCount: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget buildChatItem () =>  const Row(
    children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://4kwallpapers.com/images/walls/thumbs_3t/13468.jpg',),
            radius: 27,
          ),
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 8,
          )
        ],
      ),
      SizedBox(width: 17,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Omar Mohamed Mahgoub',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Expanded(
                  child: Text('Hi Hossam How Are You ? Are you ok Hi Hossam How Are You ? Are you ok Hi Hossam How Are You ? Are you ok ',
                    style: TextStyle(
                        fontSize: 13
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 3,
                  ),
                ),
                Text('10:00',),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
