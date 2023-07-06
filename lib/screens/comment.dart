import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import '../../routes/route.dart' as route;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../models/sendFeedback.dart';
import '../services/auth_service.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Comment extends StatefulWidget {
  final String place;

  const Comment({Key? key, required this.place}) : super(key: key);
  // const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  String _name = '';
  String _rate = '';
  String _description = '';
  String _lacationname = '';

  double _rating = 0.0;
  TextEditingController _reviewController = TextEditingController();
  List<dynamic> reviews = [];
  @override
  void initState() {
    super.initState();
    fetchReviews();
  }

  Future<void> fetchReviews() async {
    final url = Uri.parse(
        'https://fluttertravellapi.000webhostapp.com/getreview.php?place=lalibela');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        reviews = data;
      });
    } else {
      print('Failed to fetch reviews');
    }
  }

  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 200,
          backgroundColor: Color(0xff1c1c1c),
          automaticallyImplyLeading: false,

          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Reviews',
                style: TextStyle(
                  color: Color(0xffd27504),
                  fontSize: 40,
                  // fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Column(
                children: [],
              ),
            ],
          ),

          // buttom
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(
              color: Color(0xffd27405),
              height: 1.0,
            ),
          ),
        ),
        body: Container(
          color: Colors.transparent,
          child: Container(
            decoration: const BoxDecoration(
                // image: DecorationImage(
                //   image: AssetImage('assets/hm.jpg'),
                //   fit: BoxFit.cover,
                // ),
                // color: Colors.white
                ),
            child: Container(
              height: 600,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: reviews.length,
                      itemBuilder: (context, index) {
                        final review = reviews[index];
                        return ListTile(
                          title: Text(review['username']),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(review['review']),
                              Text('Rating: ${review['rating']}'),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const Divider(
                    height: 1.0,
                    color: Colors.black,
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(2.0),
                        height: 50,
                        width: 250,
                        // color: Color(0xff1c1c1c),

                        child: ElevatedButton(
                          onPressed: () {
                            FirebaseAuth.instance
                                .authStateChanges()
                                .listen((User? user) {
                              if (user == null) {
                                print('User is currently signed out!');

                                AuthService().signInWithGoogle();
                              } else {
                                print('User is signed in!');
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Add Review'),
                                      content: Container(
                                        width: 350,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            TextField(
                                              controller: _reviewController,
                                              keyboardType:
                                                  TextInputType.multiline,
                                              maxLines: 4,
                                              maxLength:
                                                  200, // Set the maxLength property to 200
                                              decoration: InputDecoration(
                                                hintText:
                                                    'Enter your review here...',
                                                hintStyle: TextStyle(
                                                  color: Colors.grey.shade500,
                                                ),
                                              ),
                                            ),
                                            RatingBar.builder(
                                              initialRating: _rating,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4.0),
                                              itemBuilder: (context, _) =>
                                                  const Icon(
                                                Icons.star,
                                                color: Color(0xffd27405),
                                              ),
                                              onRatingUpdate: (rating) {
                                                setState(() {
                                                  _rating = rating;
                                                  // print(_rating);
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text(
                                            'Cancel',
                                            style: TextStyle(
                                              color: Color(0xff1c1c1c),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 40,
                                          width: 120,
                                          decoration: BoxDecoration(),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              // Save the review and rating
                                              String review =
                                                  _reviewController.text;
                                              // Do something with the rating and review
                                              Navigator.of(context).pop();
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xffd27405),
                                              foregroundColor:
                                                  const Color(0xffffffff),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(
                                                    10), // set border radius here
                                                // side: const BorderSide(
                                                //     // color: Color(0xffd27405),
                                                //     width: 1), // set border here
                                              ),
                                            ),
                                            child: TextButton(
                                              onPressed: () {
                                                _name = user.displayName!;
                                                _rate = _rating.toString();
                                                _description =
                                                    _reviewController.text;
                                                _lacationname = "lalibela";
                                                // Navigator.of(context).pop();
                                                sendFeedback(
                                                    _name,
                                                    _rate,
                                                    _description,
                                                    _lacationname);
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text(
                                                'Send',
                                                style: TextStyle(
                                                  color: Color(0xff1c1c1c),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade300,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // set border radius here
                              side: const BorderSide(
                                  color: Color(0xffd27405),
                                  width: 1), // set border here
                            ),
                          ),
                          child: const Text(
                            'Write a review',
                            style: TextStyle(
                                color: Color(0xffd27405),
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
