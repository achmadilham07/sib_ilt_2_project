import 'dart:convert';

import 'package:flutter/material.dart';

// network: add library http
import 'package:http/http.dart' as http;
import 'package:sib_ilt_2_project/model/album.dart';

class NetworkPage extends StatefulWidget {
  const NetworkPage({Key? key}) : super(key: key);

  @override
  State<NetworkPage> createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  late Future<Album> _article;

  @override
  void initState() {
    _article = fetchAlbum();
    super.initState();
  }

  Future<Album> fetchAlbum() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    );

    if (response.statusCode == 200) {
      return Album.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder<Album>(
            future: _article,
            builder: (context, AsyncSnapshot<Album> snapshot) {
              // TODO: check the connection state is done or not.
              // if state is not done, give the loading indicator widget.
              // if state is done, then check the data is ready or not.
              // // if data is ready, give the title of the [Album] data
              // // if data is error, give the error text
              // // else, give the blank text
              return Text("Album value");
            },
          ),
          OutlinedButton(
            onPressed: () {
              // TODO: set the _article value inside setState() method for reload the network
            },
            child: const Text("Reload !!"),
          ),
        ],
      ),
    );
  }
}