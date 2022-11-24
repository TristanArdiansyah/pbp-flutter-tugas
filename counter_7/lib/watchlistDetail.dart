import 'package:flutter/cupertino.dart';
import 'package:counter_7/watchlistPage.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/watchlistModels.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/showdata.dart';
import 'package:counter_7/watchlistDetail.dart';
import 'package:counter_7/fetchAPI.dart';
import 'package:counter_7/main.dart';

class WatchListDetail extends StatelessWidget {
  final WatchList data;
  const WatchListDetail({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyBudgetFormPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyBudgetPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('My Watchlist'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const WatchListPage()),
                  );
                },
              ),
            ],
          ),
        ),
      body: Container(
        margin: new EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Center(
              child: Text(data.movie_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
            ),
            Row(
              children: [
                Text("Release Date : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(data.movie_date,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Text("Watched : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(data.movie_watched.toString(),
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Text("Rating : ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(data.movie_rating.toString(),
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Text(
                  "Review: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                )
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(
                      data.movie_review,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            minimumSize: const Size.fromHeight(40),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Back',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}