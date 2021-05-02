import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/jsonmodels/Data.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:url_launcher/url_launcher.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  //List<Employee> list;
  String url = "http://newsapi.org/v2/top-headlines?country=in&category=sports&apiKey=aa67d8d98c8e4ad1b4f16dbd5f3be348";
  Data data;
  List<Articles> article;
  @override
  void initState() {
   getJSONData();
    super.initState();
  }

  Future<String> getJSONData() async {
    var Parsedurl = Uri.parse(url);
    http.Response response = await http
        .get(Parsedurl, headers: {"Accept": "application/json"});
    print(response.body);
    debugPrint(response.body);

    setState(() {
      data = Data.fromJson(json.decode(response.body));
      article = data.articles;
    });

    return "Success";
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard",
        style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: ListView.builder(

        itemCount: article == null ? 0 : article.length,

        itemBuilder: (BuildContext context, int index) {
          return new Container(
            child: new Center(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Padding(padding: EdgeInsets.all(10.0),
                  child: Card(
                    child: new Padding(padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(article.elementAt(index).author,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),),
                        SizedBox(height: 5,),
                        Text(article.elementAt(index).title),
                        SizedBox(height: 5,),
                        Text(article.elementAt(index).description),
                        SizedBox(height: 5,),
                        GestureDetector(
                          onTap: () {
                            _launchURL(article.elementAt(index).url);
                          },
                          child: Text(article.elementAt(index).url,
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),)
                        ),
                        SizedBox(height: 5,),
                        Image.network(article.elementAt(index).urlToImage),
                        SizedBox(height: 5,),
                        Text(article.elementAt(index).publishedAt)
                      ],
                      /* child: new Text(article.elementAt(index).author),
                      padding: EdgeInsets.all(20),*/
                    )),
                  ))

                ],
              ),
            ),
          );
        },
      ),
    );/* ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
        ),
        itemCount: list != null ? list.length : 0,
        itemBuilder: (context, index) =>
            list != null ? GestureDetector(
              child: Padding(
                padding: EdgeInsets.all(10),
                child:             Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    Container(
                      height: 45.0,
                      width: 45.0,
                      decoration: new BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: new DecorationImage(
                          image: *//*widget.user != null ?  new ExactAssetImage(_image.path) :*//* NetworkImage(list.elementAt(index).imageUrl),
                          fit: BoxFit.cover,
                        ),
                        border:
                        Border.all(color: Colors.red, width: 1.0),
                        borderRadius:
                        new BorderRadius.all(const Radius.circular(80.0)),
                      ),
                    ),
                    Text(list.elementAt(index).firstName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),),
                    Text(list.elementAt(index).lastName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => EmployeeDetails(employee: list.elementAt(index),)
                ));
              },
            ) : Container(),
      )*/

  }
  void _launchURL(String _url) async =>
      await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
}
