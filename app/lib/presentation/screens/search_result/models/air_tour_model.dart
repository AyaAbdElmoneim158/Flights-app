import 'package:app/presentation/core/utils/constants/images.dart';

class AirTourModel {
  final String image;
  final String name;
  final String dec;
  final double rate;
  final double price;

  final String airField;
  final int passengers;
  final String flightDuration;
  final String flightStart;
  final List<String> flightRoute;
  final Pilot pilot;
  final List<Review> review;

  AirTourModel({
    required this.image,
    required this.name,
    required this.dec,
    required this.rate,
    required this.price,
    required this.airField,
    required this.passengers,
    required this.flightDuration,
    required this.flightStart,
    required this.flightRoute,
    required this.pilot,
    required this.review,
  });

  static List<AirTourModel> dummyAirTour = [
    AirTourModel(
        image: AppImages.airTour,
        name: "Cessna 172 familiarization flight from Kronstadt",
        dec:
            "An exciting flight in a Cessna 172 sightseeing airplane over the neighborhood of the airfield. The flight includes performance of simple aerobatics figures and short-term weightlessness mode.",
        rate: 4.7,
        price: 2000,
        airField: "Selzo",
        passengers: 4,
        flightDuration: "35 min",
        flightStart: "9:00",
        flightRoute: [
          "Kronstadt",
          "Gulf of Finland",
          "Forts",
          "Dam",
        ],
        pilot: Pilot(
          name: "Oleg Samsonov",
          image: AppImages.pilot,
          rate: 5,
          hoursFlown: 1250,
          airPlane: "Cessna 172",
          license: "Commercial Pilot's License - CPL",
        ),
        review: [
          Review(
            name: "Ivan",
            image: AppImages.ivan,
            rate: 5,
            date: "May 21, 2022",
            review:
                "The flights are excellent! The airfield is located in a picturesque place and there is a lot to admire from above.",
          ),
        ]),
    AirTourModel(
        image: AppImages.airTour1,
        name: "Cetus 900 airplane flight from Kronshtadt",
        dec:
            "An exciting flight in a Cessna 172 sightseeing airplane over the neighborhood of the airfield. The flight includes performance of simple aerobatics figures and short-term weightlessness mode.",
        rate: 4.9,
        price: 4000,
        airField: "Bychye Polye",
        passengers: 1,
        flightDuration: "60 min",
        flightStart: "13:00",
        flightRoute: [
          "Kronstadt",
          "Gulf of Finland",
          "Forts",
          "Dam",
        ],
        pilot: Pilot(
          name: "Oleg Samsonov",
          image: AppImages.pilot,
          rate: 5,
          hoursFlown: 1250,
          airPlane: "Cessna 172",
          license: "Commercial Pilot's License - CPL",
        ),
        review: [
          Review(
            name: "Ivan",
            image: AppImages.ivan,
            rate: 5,
            date: "May 21, 2022",
            review:
                "The flights are excellent! The airfield is located in a picturesque place and there is a lot to admire from above.",
          ),
        ]),
    AirTourModel(
        image: AppImages.airTour2,
        name: "Cessna 172 familiarization flight from Kronshtadt",
        dec:
            "An exciting flight in a Cessna 172 sightseeing airplane over the neighborhood of the airfield. The flight includes performance of simple aerobatics figures and short-term weightlessness mode.",
        rate: 4.8,
        price: 3000,
        airField: "Bychye Polye",
        passengers: 3,
        flightDuration: "20 min",
        flightStart: "7:00",
        flightRoute: [
          "Kronstadt",
          "Gulf of Finland",
          "Forts",
          "Dam",
        ],
        pilot: Pilot(
          name: "Oleg Samsonov",
          image: AppImages.pilot,
          rate: 5,
          hoursFlown: 1250,
          airPlane: "Cessna 172",
          license: "Commercial Pilot's License - CPL",
        ),
        review: [
          Review(
            name: "Ivan",
            image: AppImages.ivan,
            rate: 5,
            date: "May 21, 2022",
            review:
                "The flights are excellent! The airfield is located in a picturesque place and there is a lot to admire from above.",
          ),
        ]),
    AirTourModel(
        image: AppImages.airTour3,
        name: "Cessna 172 familiarization flight from Kronstadt",
        dec:
            "An exciting flight in a Cessna 172 sightseeing airplane over the neighborhood of the airfield. The flight includes performance of simple aerobatics figures and short-term weightlessness mode.",
        rate: 4.9,
        price: 2500,
        airField: "Bychye Polye",
        passengers: 1,
        flightDuration: "35 min",
        flightStart: "9:00",
        flightRoute: [
          "Kronstadt",
          "Gulf of Finland",
          "Forts",
          "Dam",
        ],
        pilot: Pilot(
          name: "Oleg Samsonov",
          image: AppImages.pilot,
          rate: 5,
          hoursFlown: 1250,
          airPlane: "Cessna 172",
          license: "Commercial Pilot's License - CPL",
        ),
        review: [
          Review(
            name: "Ivan",
            image: AppImages.ivan,
            rate: 5,
            date: "May 21, 2022",
            review:
                "The flights are excellent! The airfield is located in a picturesque place and there is a lot to admire from above.",
          ),
        ])
  ];
}

class Pilot {
  final String name;
  final String image;
  final int rate;
  final int hoursFlown;
  final String airPlane;
  final String license;

  Pilot({
    required this.name,
    required this.image,
    required this.rate,
    required this.hoursFlown,
    required this.airPlane,
    required this.license,
  });
}

class Review {
  final String name;
  final String image;
  final int rate;
  final String date;
  final String review;

  Review({
    required this.name,
    required this.image,
    required this.rate,
    required this.date,
    required this.review,
  });
}
