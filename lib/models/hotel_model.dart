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


List<Activity> dubaiActivities = [
  Activity(
    imageUrl: 'assets/images/dk1.jpg',
    name: 'Burj Khalifa',
    type: 'Architectural Buildings',
    startTimes: ['11:00 pm', '01:00 pm'],
    rating: 5,
    price: 500,
  ),
  Activity(
    imageUrl: 'assets/images/dk2.jpg',
    name: 'The Dubai Fountain',
    type: 'Fountains',
    startTimes: ['12:30 pm', '02:00 pm'],
    rating: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/dk3.jpg',
    name: 'Dubai Miracle Garden',
    type: 'Gardens',
    startTimes: ['12:30 pm', '02:00 pm'],
    rating: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/dk4.jpg',
    name: 'Global Village',
    type: 'Amusement & Theme Parks',
    startTimes: ['12:30 pm', '02:00 pm'],
    rating: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/dk5.jpg',
    name: 'Dubai Frame',
    type: 'Architectural Buildings',
    startTimes: ['12:30 pm', '02:00 pm'],
    rating: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/dk6.jpg',
    name: 'Dubai Creek',
    type: 'Bodies of Water • Piers & Boardwalks',
    startTimes: ['12:30 pm', '02:00 pm'],
    rating: 4,
    price: 125,
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

List<Activity> honkkongActivities = [
  Activity(
    imageUrl: 'assets/images/kh1.jpg',
    name: 'Tian Tan Buddha (Big Buddha)',
    type: 'Architectural Buildings',
    startTimes: ['07:00 am', '07:00 pm'],
    rating: 4,
    price: 100,
  ),
  Activity(
    imageUrl: 'assets/images/kh2.jpg',
    name: 'Victoria Peak (The Peak)',
    type: 'Observation Decks & Towers',
    startTimes: ['10:00 am', '07:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/kh3.jpg',
    name: 'Star Ferry',
    type: 'Sightseeing Tour',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/kh4.jpg',
    name: 'Ngong Ping 360',
    type: 'Trams • Points of Interest & Landmarks',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 5,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/kh5.jpg',
    name: 'Lantau island',
    type: 'Islands • Religious Sites',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 5,
    price: 125,
  ),
];

List<Activity> germanActivities = [
  Activity(
    imageUrl: 'assets/images/gk1.jpg',
    name: ' Berlin',
    type: 'Sightseeing Tour',
    startTimes: ['07:00 am', '07:00 pm'],
    rating: 5,
    price: 100,
  ),
  Activity(
    imageUrl: 'assets/images/gk2.jpg',
    name: 'Munich',
    type: 'Sightseeing Tour',
    startTimes: ['10:00 am', '07:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/gk4.jpg',
    name: 'Medieval Rothenburg',
    type: 'Sightseeing Tour',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/gk5.jpg',
    name: 'Cologne',
    type: 'Sightseeing Tour',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Activity> baliActivities = [
  Activity(
    imageUrl: 'assets/images/bk1.jpg',
    name: 'Mount Agung',
    type: 'Mountains',
    startTimes: ['07:00 am', '07:00 pm'],
    rating: 5,
    price: 100,
  ),
  Activity(
    imageUrl: 'assets/images/bk2.jpg',
    name: 'Double Six Beach',
    type: 'Beaches',
    startTimes: ['10:00 am', '07:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/bk3.jpg',
    name: 'Seminyak Beach',
    type: 'Beaches',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/bk4.jpg',
    name: 'Nyaman Gallery',
    type: 'Art Galleries',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
    price: 125,
  ),

  Activity(
    imageUrl: 'assets/images/bk5.jpg',
    name: 'Nusa Dua Beach',
    type: 'Beaches',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 5,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/bk6.jpg',
    name: 'Kelingking Beach',
    type: 'Art Galleries',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/bk7.jpg',
    name: 'Canggu Beach',
    type: 'Beaches',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
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

  AbroadDestination(
    imageUrl: 'assets/images/germany.jpeg',
    city: 'Germany',
    country: 'Europe',
    description: 'Visit Germany for an amazing and unforgettable adventure.',
    activities: germanActivities,
  ),

  AbroadDestination(
    imageUrl: 'assets/images/dubai.jpeg',
    city: 'Dubai',
    country: 'UAE',
    description: 'Visit Dubai for an amazing and unforgettable adventure.',
    activities: dubaiActivities,
  ),

  AbroadDestination(
    imageUrl: 'assets/images/bali.jpeg',
    city: 'Bali',
    country: 'Indonesia',
    description: 'Visit Indonesia for an amazing and unforgettable adventure.',
    activities: baliActivities,
  ),

  AbroadDestination(
    imageUrl: 'assets/images/hongkong.jpeg',
    city: 'Hong Kong',
    country: 'Asia',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    activities: honkkongActivities,
  ),

];