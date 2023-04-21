import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  DoctorCard({
    super.key,
    required this.doctorImagePath,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Column(
            children: [
              //picture
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  doctorImagePath,
                  height: 100,
                ),
              ),
              SizedBox(height: 10),
              //rating out of 5
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    rating,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: 10),
              //doctor name
              Text(
                doctorName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              //doctor title
              Text(doctorProfession + ', 7 y.e.')
            ],
          ),
        ),
      ),
    );
  }
}
