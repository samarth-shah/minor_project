import 'package:flutter_travel_ui/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> vadodaraActivities = [
  Activity(
    imageUrl: 'assets/images/kamatibaug.jpg',
    name: 'KamatiBaug',
    type: 'Garden with Zoo and Museum',
    startTimes: ['10:00 am', '05:00 pm'],
    rating: 5,
    price: 300,
  ),
  Activity(
    imageUrl: 'assets/images/lvp.jpg',
    name: 'Laxmi Vilas Palace',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 4,
    price: 250,
  ),
  Activity(
    imageUrl: 'assets/images/eme.jpg',
    name: 'EME Temple',
    type: 'Temple',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 50,
  ),
];

List<Activity> delhiActivities = [
  Activity(
    imageUrl: 'assets/images/redfort.jpg',
    name: 'The Red Fort',
    type: 'Sightseeing Tour',
    startTimes: ['10:00 am', '05:00 pm'],
    rating: 5,
    price: 50,
  ),
  Activity(
    imageUrl: 'assets/images/qutubminar.jpg',
    name: 'Qutub Minar',
    type: 'Sightseeing Tour',
    startTimes: ['07:00 am', '07:00 pm'],
    rating: 4,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/lotustemple.jpg',
    name: 'The Lotus Temple',
    type: 'Temple',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 80,
  ),
];

List<Activity> mumbaiActivities = [
  Activity(
    imageUrl: 'assets/images/goi.jpg',
    name: 'Gateway of India',
    type: 'Sightseeing Tour',
    startTimes: ['07:00 am', '07:00 pm'],
    rating: 5,
    price: 20,
  ),
  Activity(
    imageUrl: 'assets/images/juhubeach.jpg',
    name: 'Juhu Beach',
    type: 'Beach',
    startTimes: ['07:00 am', '12:00 am'],
    rating: 4,
    price: 40,
  ),
  Activity(
    imageUrl: 'assets/images/waxmuseum.jpg',
    name: 'Red Carpet Wax Museum',
    type: 'Temple',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 250,
  ),
];

List<Activity> kashmirActivities = [
   Activity(
    imageUrl: 'assets/images/dallake.jpg',
    name: 'Dal Lake',
    type: 'Sightseeing Tour',
    startTimes: ['07:00 am', '07:00 pm'],
    rating: 5,
    price: 100,
  ),
  Activity(
    imageUrl: 'assets/images/nubhra.jpg',
    name: 'Nubhra Valley',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/amarnath.jpg',
    name: 'Amarnath Cave',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Activity> goaActivities = [
   Activity(
    imageUrl: 'assets/images/calangute.jpg',
    name: 'Calangute Beach',
    type: 'Sightseeing Tour',
    startTimes: ['07:00 am', '07:00 pm'],
    rating: 5,
    price: 100,
  ),
  Activity(
    imageUrl: 'assets/images/aguada.jpg',
    name: 'Fort Aguada',
    type: 'Sightseeing Tour',
    startTimes: ['10:00 am', '07:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/dudhsagar.jpg',
    name: 'Dudhsagar Falls',
    type: 'Sightseeing Tour',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/vadodara.jpg',
    city: 'Vadodara',
    country: 'India',
    description: 'Visit Vadodara for an amazing and unforgettable adventure.',
    activities: vadodaraActivities,
  ),
  Destination(
    imageUrl: 'assets/images/newdelhi.jpg',
    city: 'New Delhi',
    country: 'India',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.',
    activities: delhiActivities,
  ),
  Destination(
    imageUrl: 'assets/images/mumbai.jpg',
    city: 'Mumbai',
    country: 'India',
    description: 'Visit Mumbai for an amazing and unforgettable adventure.',
    activities: mumbaiActivities,
  ),
  
  Destination(
    imageUrl: 'assets/images/kashmir.jpg',
    city: 'Kashmir',
    country: 'India',
    description: 'Visit Kashmir for an amazing and unforgettable adventure.',
    activities: kashmirActivities,
  ),
  Destination(
    imageUrl: 'assets/images/goa.jpg',
    city: 'Goa',
    country: 'India',
    description: 'Visit Goa for an amazing and unforgettable adventure.',
    activities: goaActivities,
  ),
];