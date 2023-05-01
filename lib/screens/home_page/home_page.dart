import 'package:flutter/material.dart';

import '../details_page/details_page.dart';
import 'app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  final String firstImagePath = 'assets/images/big-1.jpg';
  final String secondImagePath = 'assets/images/big-2.jpg';
  final String thirdImagePath = 'assets/images/big-3.jpg';

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: tabController,
          tabs: [
            Tab(
              icon:Icon(
                Icons.more,
                color: Colors.purple.withOpacity(0.3),
                size:30
              )
            ),
            Tab(
              icon:Icon(
                Icons.play_arrow,
                color: Colors.purple.withOpacity(0.3),
                size:30
              )
            ),
            Tab(
              icon:Icon(
                Icons.navigation,
                color: Colors.purple.withOpacity(0.3),
                size:30
              )
            ),
            Tab(
              icon:Icon(
                Icons.supervised_user_circle,
                color: Colors.purple.withOpacity(0.3),
                size:30
              )
            ),
          ]
        ),
      ),
      appBar: buildAppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(12),
              scrollDirection: Axis.horizontal,
              children: [
                listElement('assets/images/model-1.jpg', 'assets/images/chanellogo.jpg'),
                const SizedBox(width: 25),
                listElement('assets/images/model-2.jpg', 'assets/images/chanellogo.jpg'),
                const SizedBox(width: 25),
                listElement('assets/images/model-3.jpg', 'assets/images/chanellogo.jpg'),
                const SizedBox(width: 25),
                listElement('assets/images/model-4.jpg', 'assets/images/chanellogo.jpg'),
                const SizedBox(width: 25),
                listElement('assets/images/model-1.jpg', 'assets/images/chanellogo.jpg'),
                const SizedBox(width: 25),
                listElement('assets/images/model-2.jpg', 'assets/images/chanellogo.jpg'),
                const SizedBox(width: 25),
                listElement('assets/images/model-3.jpg', 'assets/images/chanellogo.jpg'),
                const SizedBox(width: 25),
                listElement('assets/images/model-4.jpg', 'assets/images/chanellogo.jpg'),
                const SizedBox(width: 25),
                listElement('assets/images/model-1.jpg', 'assets/images/chanellogo.jpg'),
                const SizedBox(width: 25),
                listElement('assets/images/model-2.jpg', 'assets/images/chanellogo.jpg'),
                const SizedBox(width: 25),
                listElement('assets/images/model-3.jpg', 'assets/images/chanellogo.jpg'),
                const SizedBox(width: 25),
                listElement('assets/images/model-4.jpg', 'assets/images/chanellogo.jpg')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                height: 500,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/model-1.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        const SizedBox(width:15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Daisy',
                                style:TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'A few minutes ago',
                                style:TextStyle(
                                  fontSize: 12,
                                  color:Colors.deepPurple.shade300
                                )
                              ),
                            ]
                          ),
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.deepPurple,
                          size:24
                        )
                      ]
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.deepPurple
                      )
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => DetailsPage(imgPath: firstImagePath)
                              ));
                            },
                            child: Hero(
                              tag: firstImagePath,
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(firstImagePath),
                                    fit: BoxFit.cover
                                  ),
                                )
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => DetailsPage(imgPath: secondImagePath)
                              ));
                            },
                            child: Column(
                              children: [
                                Hero(
                                  tag: secondImagePath,
                                  child: Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(10),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:AssetImage(secondImagePath)
                                      ),
                                    )
                                  ),
                                ),
                                const SizedBox(height: 20),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => DetailsPage(imgPath: thirdImagePath)
                                    ));
                                  },
                                  child: Hero(
                                    tag: thirdImagePath,
                                    child: Container(
                                      height: 90,
                                      decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:AssetImage(thirdImagePath)
                                        ),
                                      )
                                    ),
                                  ),
                                )
                              ]
                            ),
                          )
                        )
                      ]
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.purple.withOpacity(0.3),
                          ),
                          child: const Center(
                            child: Text(
                              '# Lorem Ipsum',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                              )
                            )
                          )
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.purple.withOpacity(0.3),
                          ),
                          child: const Center(
                            child: Text(
                              '# Lorem ',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                              )
                            )
                          )
                        )
                      ]
                    ),
                    const SizedBox(height: 15),
                    const Divider(),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(
                          Icons.replay,
                          color:Colors.purple.withOpacity(0.3),
                          size: 30
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '2.1 k',
                          style: TextStyle(fontSize: 16)
                        ),
                        const SizedBox(width: 20),

                        Icon(
                          Icons.comment,
                          color:Colors.purple.withOpacity(0.3),
                          size: 30
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '100',
                          style: TextStyle(fontSize: 16)
                        ),
                        const SizedBox(width: 20),

                        Icon(
                          Icons.favorite,
                          color:Colors.red.shade800,
                          size: 30
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '3 k',
                          style: TextStyle(fontSize: 16)
                        ),
                      ]
                    )
                  ]
                )
              )
            )
          )
        ]
      )
    );
  }

  listElement(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover
                )
              ),
            ),
            Positioned(
              top: 50,
              left:40,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(logoPath),
                    fit:BoxFit.cover
                  )
                )
              )
            )
          ],
        ),
        const SizedBox(height:12),
        Container(
          height: 25,
          width: 85,
          decoration: BoxDecoration(
            color:Colors.deepPurple.shade600,
            borderRadius: BorderRadius.circular(20)),
          child: const Center(
            child: Text(
              'Follow',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 16
              )
            ),
          ),
        )
      ],
    );
  }
}
