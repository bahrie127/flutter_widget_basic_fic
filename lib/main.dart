import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Flutter FUGI'),
        backgroundColor: Colors.red,
        elevation: 10,
        leading: const Icon(Icons.settings),
        actions: [
          InkWell(
            onTap: () {},
            child: const Icon(Icons.logout),
          ),
          const SizedBox(
            width: 8,
          ),
          const Icon(Icons.person),
          const SizedBox(
            width: 16,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.96,
                ),
                itemBuilder: (context, index) {
                  return box();
                },
                itemCount: 15,
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                    ),
                    title: Text('Judul'),
                    subtitle: Row(
                      children: [
                        Text('asik'),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(Icons.favorite)
                      ],
                    ),
                    trailing: Icon(Icons.remove_circle),
                  ),
                );
              },
            ),
          ),
          // Stack(
          //   alignment: Alignment.bottomRight,
          //   // mainAxisAlignment: MainAxisAlignment.center,
          //   // crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     Column(children: [
          //       Container(
          //         margin: const EdgeInsets.all(16),
          //         // padding: const EdgeInsets.all(12),
          //         height: 200,
          //         width: 200,
          //         decoration: BoxDecoration(
          //           color: Colors.green,
          //           border: Border.all(color: Colors.red, width: 5),
          //           borderRadius: BorderRadius.circular(100),
          //           image: const DecorationImage(
          //               image: NetworkImage('https://i.pravatar.cc/300')),
          //         ),
          //         child: const Padding(
          //           padding: EdgeInsets.all(20),
          //           child: Text('Hello Bahri'),
          //         ),
          //       ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           ElevatedButton(
          //             onPressed: null,
          //             child: Text('Submit'),
          //           ),
          //           TextButton(
          //             onPressed: () {},
          //             child: Text('text button'),
          //           )
          //         ],
          //       ),
          //     ]),
          //     SizedBox(
          //       height: 200,
          //       child: ListView(
          //         scrollDirection: Axis.horizontal,
          //         children: const [
          //           CircleAvatar(
          //             radius: 100,
          //             backgroundColor: Colors.red,
          //             child: CircleAvatar(
          //               radius: 95,
          //               backgroundImage:
          //                   NetworkImage('https://i.pravatar.cc/300'),
          //               // child: Image.network('https://i.pravatar.cc/300'),
          //             ),
          //           ),
          //           CircleAvatar(
          //             radius: 100,
          //             backgroundColor: Colors.red,
          //             child: CircleAvatar(
          //               radius: 95,
          //               backgroundImage:
          //                   NetworkImage('https://i.pravatar.cc/300'),
          //               // child: Image.network('https://i.pravatar.cc/300'),
          //             ),
          //           ),
          //           CircleAvatar(
          //             radius: 100,
          //             backgroundColor: Colors.red,
          //             child: CircleAvatar(
          //               radius: 95,
          //               backgroundImage:
          //                   NetworkImage('https://i.pravatar.cc/300'),
          //               // child: Image.network('https://i.pravatar.cc/300'),
          //             ),
          //           ),
          //           CircleAvatar(
          //             radius: 100,
          //             backgroundColor: Colors.red,
          //             child: CircleAvatar(
          //               radius: 95,
          //               backgroundImage:
          //                   NetworkImage('https://i.pravatar.cc/300'),
          //               // child: Image.network('https://i.pravatar.cc/300'),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     Positioned(
          //       bottom: 200,
          //       right: 50,
          //       child: Image.asset(
          //         'assets/icons/abstrack.png',
          //         width: 100,
          //       ),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget box() {
    return Container(
      color: Colors.green,
    );
  }
}
