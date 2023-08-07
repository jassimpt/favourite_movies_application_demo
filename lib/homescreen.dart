import 'package:flutter/material.dart';
import './screens/movies.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.list_outlined)),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        elevation: 30,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(offset: Offset(5, 10), blurRadius: 30)],
                  color: Colors.indigo,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/screens');
                  },
                  icon: Icon(
                    Icons.movie,
                    color: Colors.white,
                    size: 30,
                  ),
                  label: Text(
                    "Favourites",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
            ),
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(offset: Offset(5, 10), blurRadius: 30)],
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person_pin_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                  label: Text(
                    "About Me",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )),
            ),
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(offset: Offset(5, 10), blurRadius: 30)],
                  color: Colors.purple[400],
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.downloading_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Download My Projects",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
