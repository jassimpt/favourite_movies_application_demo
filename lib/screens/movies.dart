import 'package:flutter/material.dart';

class MyMovies extends StatelessWidget {
  const MyMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Favourite Movies"),
          backgroundColor: Colors.green,
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: ((context, index) {
              return Card(
                child: ListTile(
                  trailing: Icon(Icons.arrow_forward),
                  subtitle: Text("its an awesome movie"),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/avengers.png'),
                    radius: 40,
                  ),
                  title: Text("Avengers"),
                ),
              );
            })));
  }
}
