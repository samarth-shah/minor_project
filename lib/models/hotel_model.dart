import 'activity_model.dart';

class AbroadDestination {
  String imageUrl;
  String city;
  String country;
  String url;
  String description;
  List<Activity> activities;


  AbroadDestination({
    this.imageUrl,
    this.city,
    this.country,
    this.url,
    this.description,
    this.activities,
      });
}

List<Activity> veniceActivities = [
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '01:00 pm'],
    rating: 4,
    price: 219,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '02:00 pm'],
    rating: 3,
    price: 129,
  ),
];

List<Activity> parisActivities = [
   Activity(
    imageUrl: 'assets/images/eiffel.jpg',
    name: 'Eiffel Tower',
    type: 'Sightseeing Tour',
    startTimes: ['07:00 am', '07:00 pm'],
    rating: 5,
    price: 109,
  ),
  Activity(
    imageUrl: 'assets/images/louvremuseum.jpg',
    name: 'Louvre Museum',
    type: 'Sightseeing Tour',
    startTimes: ['10:00 am', '07:00 pm'],
    rating: 4,
    price: 219,
  ),
  Activity(
    imageUrl: 'assets/images/champs.jpg',
    name: 'Champs Elysées',
    type: 'Sightseeing Tour',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 129,
  ),
  Activity(
    imageUrl: 'assets/images/seine.jpg',
    name: 'Cruise on the Seine',
    type: 'Cruise Tour',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 9999,
  ),
  
];

List<Activity> newYorkActivities = [
   Activity(
    imageUrl: 'assets/images/sol.jpg',
    name: 'Statue of Liberty',
    type: 'Sightseeing Tour',
    startTimes: ['07:00 am', '07:00 pm'],
    rating: 5,
    price: 100,
  ),
  Activity(
    imageUrl: 'assets/images/centralpark.jpg',
    name: 'Central Park',
    type: 'Sightseeing Tour',
    startTimes: ['10:00 am', '07:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/metropolitan.jpg',
    name: 'Metropolitan Museum',
    type: 'Sightseeing Tour',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<AbroadDestination> destinations = [
  AbroadDestination(
    imageUrl: 'assets/images/venice.jpg',
    city: 'Venice',
    country: 'Italy',
    url: 'https://goo.gl/maps/uyii18LYsLQ2hidx9',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    activities: veniceActivities,
  ),
  AbroadDestination(
    imageUrl: 'assets/images/paris.jpg',
    city: 'Paris',
    url: 'https://goo.gl/maps/hiLMR743SvrRr6qG6',
    country: 'France',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
    activities: parisActivities,
  ),
  AbroadDestination(
    imageUrl: 'assets/images/newyork.jpg',
    city: 'New York City',
    url: 'https://goo.gl/maps/btDHXB1c9MRvBqu89',
    country: 'United States',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    activities: newYorkActivities,
  ),
];