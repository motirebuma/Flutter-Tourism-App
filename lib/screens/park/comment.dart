import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import '../../routes/route.dart' as route;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../models/sendFeedback.dart';
import '../../services/auth_service.dart';

class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  String _name = '';
  String _rate = '';
  String _description = '';
  String _lacationname = '';

  comments() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        width: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Ethan David',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  // color: Colors.white,
                  color: Colors.black,
                ),
              ),
            ),
            Row(
              children: [Rating(3)],
            ),
            const Text(
              'From the moment I arrived, I was captivated by the island\'s natural beauty, rich culture, and warm hospitality.',
              style: TextStyle(
                fontFamily: 'Poppins',
                // fontWeight: FontWeight.w600,
                // color: Colors.white,
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }

  Rating(rate) {
    if (rate == 1) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          FaIcon(
            FontAwesomeIcons.solidStar,
            size: 14,
          ),
        ],
      );
    }
    if (rate == 2) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          FaIcon(
            FontAwesomeIcons.solidStar,
            size: 14,
          ),
          FaIcon(
            FontAwesomeIcons.solidStar,
            size: 14,
          ),
        ],
      );
    }
    if (rate == 3) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          FaIcon(
            FontAwesomeIcons.solidStar,
            size: 14,
            color: Color(0xffd27405),
          ),
          FaIcon(
            FontAwesomeIcons.solidStar,
            size: 14,
            color: Color(0xffd27405),
          ),
          FaIcon(
            FontAwesomeIcons.solidStar,
            size: 14,
            color: Color(0xffd27405),
          ),
          FaIcon(
            FontAwesomeIcons.star,
            size: 14,
            color: Color(0xffd27405),
          ),
          FaIcon(
            FontAwesomeIcons.star,
            size: 14,
            color: Color(0xffd27405),
          ),
        ],
      );
    }
  }

  double _rating = 0.0;
  TextEditingController _reviewController = TextEditingController();
  @override
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
            children: [
              const Text(
                'Reviews',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  // fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                '3.0',
                style: TextStyle(
                  color: Color(0xffd27405),
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Rating(3),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'based on 123 customers reviews',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Poppins', fontSize: 13),
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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 500,
                      // width: 200,
                      child: Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              comments(),
                              // comments(),
                              // comments(),
                              // comments(),
                              // comments(),
                              // comments(),
                              // comments(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
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
                                              sendFeedback(_name, _rate,
                                                  _description, _lacationname);
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
                              color: Color(0xffd27405), fontFamily: 'Poppins'),
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
    );
  }
}
