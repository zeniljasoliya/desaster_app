import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reply demo"),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: const Color(0xff344955),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          height: 56.0,
          child: Row(children: <Widget>[
            const IconButton(
              onPressed: shoMenu,
              icon: Icon(Icons.menu),
              color: Colors.white,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              color: Colors.white,
            )
          ]),
        ),
      ),
    );
  }

  // showMenu() {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return Container(
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.only(
  //               topLeft: Radius.circular(16.0),
  //               topRight: Radius.circular(16.0),
  //             ),
  //             color: Color(0xff232f34),
  //           ),
  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             crossAxisAlignment: CrossAxisAlignment.end,
  //             children: <Widget>[
  //               Container(
  //                 height: 36,
  //               ),
  //               SizedBox(
  //                   height: (56 * 6).toDouble(),
  //                   child: Container(
  //                       decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.only(
  //                           topLeft: Radius.circular(16.0),
  //                           topRight: Radius.circular(16.0),
  //                         ),
  //                         color: Color(0xff344955),
  //                       ),
  //                       child: Stack(
  //                         alignment: Alignment(0, 0),
  //                         overflow: Overflow.visible,
  //                         children: <Widget>[
  //                           Positioned(
  //                             top: -36,
  //                             child: Container(
  //                               decoration: BoxDecoration(
  //                                   borderRadius:
  //                                       BorderRadius.all(Radius.circular(50)),
  //                                   border: Border.all(
  //                                       color: Color(0xff232f34), width: 10)),
  //                               child: Center(
  //                                 child: ClipOval(
  //                                   child: Image.network(
  //                                     "https://i.stack.imgur.com/S11YG.jpg?s=64&g=1",
  //                                     fit: BoxFit.cover,
  //                                     height: 36,
  //                                     width: 36,
  //                                   ),
  //                                 ),
  //                               ),
  //                             ),
  //                           ),
  //                           Positioned(
  //                             child: ListView(
  //                               physics: NeverScrollableScrollPhysics(),
  //                               children: <Widget>[
  //                                 ListTile(
  //                                   title: Text(
  //                                     "Inbox",
  //                                     style: TextStyle(color: Colors.white),
  //                                   ),
  //                                   leading: Icon(
  //                                     Icons.inbox,
  //                                     color: Colors.white,
  //                                   ),
  //                                   onTap: () {},
  //                                 ),
  //                                 ListTile(
  //                                   title: Text(
  //                                     "Starred",
  //                                     style: TextStyle(color: Colors.white),
  //                                   ),
  //                                   leading: Icon(
  //                                     Icons.star_border,
  //                                     color: Colors.white,
  //                                   ),
  //                                   onTap: () {},
  //                                 ),
  //                                 ListTile(
  //                                   title: Text(
  //                                     "Sent",
  //                                     style: TextStyle(color: Colors.white),
  //                                   ),
  //                                   leading: Icon(
  //                                     Icons.send,
  //                                     color: Colors.white,
  //                                   ),
  //                                   onTap: () {},
  //                                 ),
  //                                 ListTile(
  //                                   title: Text(
  //                                     "Trash",
  //                                     style: TextStyle(color: Colors.white),
  //                                   ),
  //                                   leading: Icon(
  //                                     Icons.delete_outline,
  //                                     color: Colors.white,
  //                                   ),
  //                                   onTap: () {},
  //                                 ),
  //                                 ListTile(
  //                                   title: Text(
  //                                     "Spam",
  //                                     style: TextStyle(color: Colors.white),
  //                                   ),
  //                                   leading: Icon(
  //                                     Icons.error,
  //                                     color: Colors.white,
  //                                   ),
  //                                   onTap: () {},
  //                                 ),
  //                                 ListTile(
  //                                   title: Text(
  //                                     "Drafts",
  //                                     style: TextStyle(color: Colors.white),
  //                                   ),
  //                                   leading: Icon(
  //                                     Icons.mail_outline,
  //                                     color: Colors.white,
  //                                   ),
  //                                   onTap: () {},
  //                                 ),
  //                               ],
  //                             ),
  //                           )
  //                         ],
  //                       ))),
  //               Container(
  //                 height: 56,
  //                 color: Color(0xff4a6572),
  //               )
  //             ],
  //           ),
  //         );
  //       });
  // }
  shoMenu() {
    showBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                color: Color(0xFF253746),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
