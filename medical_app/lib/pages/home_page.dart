import 'package:flutter/material.dart';
import 'package:medical_app/util/category_card.dart';
import 'package:medical_app/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //name
                      Text(
                        'Hello',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Luciano',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  //profile picture
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(Icons.person)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.pink[100]),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    //animation or cute picture
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.deepPurple,
                    ),

                    SizedBox(width: 20),

                    //How do you feel
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you feel?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text('Fill out medical cart right now'),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text('Get Started',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How we can help you',
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),

            //horizontal list -> categories: dentist, surgen etc...

            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    iconImagePath: 'lib/icons/tooth.png',
                    categoryName: 'Dentist',
                  ),
                  CategoryCard(
                    iconImagePath: 'lib/icons/medicine.png',
                    categoryName: 'Medicine',
                  ),
                  CategoryCard(
                    iconImagePath: 'lib/icons/surgeon.png',
                    categoryName: 'Surgeon',
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),
            //doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor List',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(
                  doctorImagePath: 'lib/images/doctor1.png',
                  rating: '4.6',
                  doctorName: 'Dr. Ganesh Gupta',
                  doctorProfession: 'Therapist',
                ),
                DoctorCard(
                  doctorImagePath: 'lib/images/doctor2.png',
                  rating: '4.7',
                  doctorName: 'Dr. Ganesh Gupta',
                  doctorProfession: 'Psychologist',
                ),
                DoctorCard(
                  doctorImagePath: 'lib/images/doctor3.png',
                  rating: '4.9',
                  doctorName: 'Dr. Ganesh Gupta',
                  doctorProfession: 'Surgeon',
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
