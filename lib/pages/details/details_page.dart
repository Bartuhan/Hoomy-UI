import 'package:flutter/material.dart';
import 'package:hoomy_ui/constants.dart';
import 'package:hoomy_ui/size_config.dart';
import 'components/location_map.dart';
import 'components/main_picture.dart';
import 'components/profilepic_and_name.dart';
import 'components/rent_button.dart';
import 'components/review_card.dart';
import 'components/top_bar.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    super.key,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: myHeight(context) * 0.02),
              const TopBar(),
              SizedBox(height: myHeight(context) * 0.33),
              Positioned(
                child: Container(
                  height: myHeight(context) * 1,
                  width: myWidth(context) * 1,
                  decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(60))),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          top: myHeight(context) * (-0.3),
                          child: const MainPictures()),
                      Positioned(
                        top: myHeight(context) * 0.12,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Agent",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: myHeight(context) * 0.01),
                              const ProfilePicAndName(
                                imgUrl: imgUrl,
                                name: "Bartuhan İshakoğlu",
                                title: "Junior Developer",
                              ),
                              SizedBox(height: myHeight(context) * 0.015),
                              const Text(
                                "Property Details",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: myHeight(context) * 0.01),
                              Row(
                                children: [
                                  Column(
                                    children: const [
                                      Text(
                                        "Bed Rooms",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        " - 3 - ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: myWidth(context) * 0.15),
                                  Column(
                                    children: const [
                                      Text(
                                        "Bath Up",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        " - 2 - ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: myWidth(context) * 0.15),
                                  Column(
                                    children: const [
                                      Text(
                                        "Area",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "1500 sqft",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: myHeight(context) * 0.01),
                              Row(
                                children: [
                                  Column(
                                    children: const [
                                      Text(
                                        "Build",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "2000",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: myWidth(context) * 0.25),
                                  Column(
                                    children: [
                                      Text(
                                        "Parking",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "1 Indoor",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: myHeight(context) * 0.02),
                              const Text(
                                "Description",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nUt ultrices venenatis finibus. Nulla gravida ut urna nec ",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: myHeight(context) * 0.02),
                              const Text(
                                "Location",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: myHeight(context) * 0.02),
                              const Location_Map(),
                              SizedBox(height: myHeight(context) * 0.01),
                              const Text(
                                "Review",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: myHeight(context) * 0.01),
                              Row(
                                children: [
                                  ReviewCard(),
                                  SizedBox(width: 15),
                                  ReviewCard(),
                                ],
                              ),
                              SizedBox(height: myHeight(context) * 0.01),
                              RentButton(
                                onTap: () {
                                  Navigator.pop(context);
                                  showDialog(
                                    context: context,
                                    builder: (context) => const AlertDialog(
                                        title: Text("İşlem Başarılı")),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
