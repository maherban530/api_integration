import 'package:api_data_fetch_best/userApi.dart';
import 'package:api_data_fetch_best/userModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var provider;
  @override
  Widget build(BuildContext context) {
    var provider;
    setState(() {
      provider = Provider.of<List<UserModel>>(context);
    });
    return Scaffold(
      appBar: AppBar(title: Text("Provider fetch data")),
      body: Center(
        child: provider == null
            ? ListView.builder(itemBuilder: (context, index) {
                return Center(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircularProgressIndicator(),
                ));
              })
            : ListView.builder(
                itemCount: provider.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.all(20),
                    title: Text(provider[index].name),
                    subtitle: Text(provider[index].address.street),
                  );
                }),
      ),
    );
  }
}
