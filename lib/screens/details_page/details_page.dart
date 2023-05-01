import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.imgPath}) : super(key: key);
  final String imgPath;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = _getScreenSize(context);
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            transitionOnUserGestures: true,
            tag: widget.imgPath,
            child: Container(
              height: screenSize.height,
              width: screenSize.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imgPath),
                  fit: BoxFit.cover
                )
              ),
            )
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                // height: 230,
                width: screenSize.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border:Border.all(color:Colors.purple.withOpacity(0.5),
                              ),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/shoes.jpg')
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'LOREM IPSUM',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'LOREM IPSUM',
                              style: TextStyle(fontSize: 16)
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 40,
                              width: screenSize.width-180,
                              child: const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                                style: TextStyle(fontSize: 14),
                                overflow: TextOverflow.visible,
                              ),
                            )
                          ]
                        ),
                      ],
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '\$ 50 ',
                            style:TextStyle(fontSize: 24)
                          ),
                          FloatingActionButton(
                            backgroundColor: Colors.deepPurple.shade300,
                            onPressed: (){},
                            child: Icon(
                              Icons.arrow_forward,
                              color:Colors.pink.shade600
                            )
                          )
                        ]
                      )
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
}

Size _getScreenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}
