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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu Yummy Hari Ini',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 182, 148, 135),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(200),
                                child: Image.asset(
                                  'assets/image/yummy.jpg',
                                  width: 30,
                                  height: 30,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Yummy Official",
                                style: TextStyle(fontSize: 10),
                              ),
                              SizedBox(width: 5),
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 7,
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 8,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/image/bubur.jpg',
                                width: 150,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Bubur Kuah Ayam",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 6),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.star, color: Colors.orange, size: 20),
                              Text(
                                "4.8",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.access_time_filled_rounded,
                                  color: Colors.black, size: 20),
                              SizedBox(width: 5),
                              Text(
                                "45 mnt",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.visibility,
                                  color: Colors.black, size: 20),
                              SizedBox(width: 6),
                              Text(
                                "12.7 rb",
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(width: 100, height: 50),
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 182, 148, 135),
                                radius: 5,
                                child: Icon(Icons.bookmark_border, size: 20),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 180,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 182, 148, 135),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/image/yummy.jpg',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Yummy Official",
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(width: 5),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 7,
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 8,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/image/mie.jpg',
                              width: 150,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Mie Nyemek",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 6),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Text(
                              "4.6",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.access_time_filled_rounded,
                                color: Colors.black, size: 20),
                            SizedBox(width: 5),
                            Text(
                              "60 mnt",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.visibility,
                                color: Colors.black, size: 20),
                            SizedBox(width: 6),
                            Text(
                              "21.4 rb",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(width: 100, height: 50),
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 182, 148, 135),
                              radius: 5,
                              child: Icon(Icons.bookmark_border, size: 20),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 180,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 182, 148, 135),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/image/yummy.jpg',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Yummy Official",
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(width: 5),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 7,
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 8,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/image/salad.jpg',
                              width: 150,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Salad Buah",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 6),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Text(
                              "4.8",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.access_time_filled_rounded,
                                color: Colors.black, size: 20),
                            SizedBox(width: 5),
                            Text(
                              "60 mnt",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.visibility,
                                color: Colors.black, size: 20),
                            SizedBox(width: 6),
                            Text(
                              "15.2 rb",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(width: 100, height: 50),
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 182, 148, 135),
                              radius: 5,
                              child: Icon(Icons.bookmark_border, size: 20),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 180,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 182, 148, 135),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/image/yummy.jpg',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Yummy Official",
                              style: TextStyle(fontSize: 10),
                            ),
                            SizedBox(width: 5),
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 7,
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 8,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/image/coklat.jpg',
                              width: 150,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Chocolate Mousse",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 6),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Text(
                              "4.8",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.access_time_filled_rounded,
                                color: Colors.black, size: 20),
                            SizedBox(width: 5),
                            Text(
                              "30 mnt",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.visibility,
                                color: Colors.black, size: 20),
                            SizedBox(width: 6),
                            Text(
                              "10.1 rb",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(width: 100, height: 50),
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 182, 148, 135),
                              radius: 7,
                              child: Icon(Icons.bookmark_border, size: 20),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
