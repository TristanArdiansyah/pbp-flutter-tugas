import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:counter_7/watchlistModels.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/showdata.dart';
import 'package:counter_7/watchlistDetail.dart';
import 'package:counter_7/fetchAPI.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';

class WatchListPage extends StatefulWidget {
  const WatchListPage({Key? key}) : super(key: key);

  @override
  State<WatchListPage> createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
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
        body: FutureBuilder(
            future: fetchToDo(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watchlist :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => ListTile(
                          
                          title: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WatchListDetail(
                                          data: snapshot.data![index])));
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              padding: const EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(color: const Color(0xFFFFFFFF)),
                                      boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromARGB(255, 143, 143, 143),
                                              blurRadius: 2.0,
                                              offset: Offset(0, 2),)
                                        ]
                                  ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${snapshot.data![index].movie_name}",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )));
                }
              }
            }));
  }
}