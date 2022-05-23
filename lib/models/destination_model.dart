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

List<Activity> chennaiActivities = [
  Activity(
    imageUrl: 'assets/images/c1.jpg',
    name: 'Kapaleeshwarar Temple',
    type: 'Religious Sites',
    startTimes: ['10:00 am', '05:00 pm'],
    rating: 5,
    price: 300,
  ),
  Activity(
    imageUrl: 'assets/images/c2.jpg',
    name: 'Shirdi Sai Baba Temple',
    type: 'Religious Sites',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 4,
    price: 250,
  ),
  Activity(
    imageUrl: 'assets/images/c3.jpg',
    name: 'VGP Marine Kingdom',
    type: 'Aquariums',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 50,
  ),
  Activity(
    imageUrl: 'assets/images/c4.jpg',
    name: 'Guindy Snake Park',
    type: 'Nature & Wildlife Areas',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
    price: 50,
  ),
  Activity(
    imageUrl: 'assets/images/c5.jpg',
    name: 'Besant Nagar Beach',
    type: 'Beaches',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
    price: 50,
  ),
];

List<Activity> jaipurActivities = [
  Activity(
    imageUrl: 'assets/images/n1.jpg',
    name: 'Jantar Mantar - Jaipur',
    type: 'Observatories & Planetariums',
    startTimes: ['10:00 am', '05:00 pm'],
    rating: 5,
    price: 300,
  ),
  Activity(
    imageUrl: 'assets/images/n2.jpg',
    name: 'Hawa Mahal - Palace of Wind',
    type: 'Architectural Buildings',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 4,
    price: 250,
  ),
  Activity(
    imageUrl: 'assets/images/n3.jpg',
    name: 'Nahargarh Fort',
    type: 'Historic Sites',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 50,
  ),
  Activity(
    imageUrl: 'assets/images/n4.jpg',
    name: 'Jaigarh Fort',
    type: 'Historic Sites',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
    price: 50,
  ),
  Activity(
    imageUrl: 'assets/images/n5.jpg',
    name: 'Birla Mandir Temple',
    type: 'Architectural Buildings',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
    price: 50,
  ),
  Activity(
    imageUrl: 'assets/images/n6.jpg',
    name: 'City Palace of Jaipur',
    type: 'History Museums',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
    price: 50,
  ),
  Activity(
    imageUrl: 'assets/images/n7.jpg',
    name: 'Albert Hall Museum',
    type: 'Historic Sites',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 50,
  ),
];

List<Activity> agraActivities = [
  Activity(
    imageUrl: 'assets/images/k1.jpg',
    name: 'Taj Mahal',
    type: 'Historic Sites ',
    startTimes: ['10:00 am', '05:00 pm'],
    rating: 5,
    price: 300,
  ),
  Activity(
    imageUrl: 'assets/images/k2.jpg',
    name: 'Agra Fort',
    type: 'Architectural Buildings',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 4,
    price: 250,
  ),
  Activity(
    imageUrl: 'assets/images/k3.jpg',
    name: 'Wildlife SOS',
    type: 'Nature & Wildlife Areas',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 50,
  ),
  Activity(
    imageUrl: 'assets/images/k4.jpg',
    name: 'Sheesh Mahal',
    type: 'Architectural Buildings',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
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

List<Activity> lucknowActivities = [
  Activity(
    imageUrl: 'assets/images/g1.jpg',
    name: 'Bara Imambara',
    type: 'Monuments & Statues',
    startTimes: ['10:00 am', '05:00 pm'],
    rating: 5,
    price: 50,
  ),
  Activity(
    imageUrl: 'assets/images/g2.jpg',
    name: 'British Residency',
    type: 'Speciality Museums',
    startTimes: ['07:00 am', '07:00 pm'],
    rating: 4,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/g3.jpg',
    name: 'Janeshwar Mishra Park',
    type: 'Parks',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 80,
  ),
  Activity(
    imageUrl: 'assets/images/g5.jpg',
    name: 'Hazratganj',
    type: 'Historic Walking Areas',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 80,
  ),
  Activity(
    imageUrl: 'assets/images/g4.jpg',
    name: 'Chandrika Devi Temple',
    type: 'Religious Sites',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
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

List<Activity> bhopalActivities = [
  Activity(
    imageUrl: 'assets/images/b1.jpg',
    name: 'Madhya Pradesh Tribal Museum',
    type: 'Natural History Museums • History Museums',
    startTimes: ['07:00 am', '07:00 pm'],
    rating: 5,
    price: 100,
  ),
  Activity(
    imageUrl: 'assets/images/b2.jpg',
    name: 'Rock Shelters of Bhimbetka',
    type: 'Historic Sites • Caverns & Caves',
    startTimes: ['10:00 am', '07:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/b3.jpg',
    name: 'Buddhist Monuments at Sanchi',
    type: 'Ancient Ruins',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/b4.jpg',
    name: 'Van Vihar National Park',
    type: 'National Parks',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/b5.jpg',
    name: 'Badi Jheel Lake',
    type: 'Bodies of Water',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
    price: 125,
  ),
  Activity(
    imageUrl: 'assets/images/b6.jpg',
    name: 'Lakshmi Narayana Temple',
    type: 'Religious Sites',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
    price: 125,
  ),
];

List<Activity> indoreActivities = [
  Activity(
    imageUrl: 'assets/images/i1.jpg',
    name: 'Sarafa Bazaar',
    type: 'Flea & Street Markets',
    startTimes: ['07:00 am', '07:00 pm'],
    rating: 4,
    price: 100,
  ),
  Activity(
    imageUrl: 'assets/images/i2.jpg',
    name: 'Khajrana Ganesh Mandir',
    type: 'Religious Sites',
    startTimes: ['10:00 am', '07:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/i3.jpg',
    name: 'Ralamandal Wildlife Sanctuary',
    type: 'Nature & Wildlife Areas',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 125,
  ),

  Activity(
    imageUrl: 'assets/images/i4.jpg',
    name: 'Bada Ganpati',
    type: 'Religious Sites',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
    price: 125,
  ),

  Activity(
    imageUrl: 'assets/images/i5.jpg',
    name: 'Janapav',
    type: 'Mountains',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
    price: 125,
  ),

  Activity(
    imageUrl: 'assets/images/i6.jpg',
    name: 'Gomatgiri',
    type: 'Parks • Religious Sites',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
    price: 125,
  ),

  Activity(
    imageUrl: 'assets/images/i7.jpg',
    name: 'Pipliyapala Regional Park Indore',
    type: 'Parks',
    startTimes: ['11:00 AM - 9:00 PM'],
    rating: 4,
  ),
];

List<Activity> suratActivities = [
  Activity(
    imageUrl: 'assets/images/s1.jpg',
    name: 'Galteshwar',
    type: 'Temple',
    startTimes: ['10:00 am', '05:00 pm'],
    rating: 5,

  ),
  Activity(
    imageUrl: 'assets/images/s2.jpg',
    name: 'Sarthana National Park',
    type: 'Sightening Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 4,
    price: 200,
  ),
  Activity(
    imageUrl: 'assets/images/u1.jpg',
    name: 'Surat Castle',
    type: 'Sightening Tour',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 3,
    price: 300,
  ),

  Activity(
    imageUrl: 'assets/images/u2.jpg',
    name: 'Amazia WaterPark',
    type: 'WaterPark',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 5,
    price: 1000,
  ),
];

List<Activity> rajkotActivities = [
  Activity(
    imageUrl: 'assets/images/r1.jpg',
    name: 'Rotary Dolls Museum',
    type: 'Speciality Museums',
    startTimes: ['07:00 am', '07:00 pm'],
    rating: 5,
    price: 100,
  ),
  Activity(
    imageUrl: 'assets/images/r2.jpg',
    name: 'Shri Ramakrishna Ashrama',
    type: 'Religious Sites',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/r3.jpg',
    name: 'Pradyuman Park',
    type: 'Nature & Wildlife Areas',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),

  Activity(
    imageUrl: 'assets/images/r4.jpg',
    name: 'Ghela Somnath Mahadev Temple',
    type: 'Religious Sites',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 4,
    price: 125,
  ),

  Activity(
    imageUrl: 'assets/images/r5.jpg',
    name: 'Aji Dam Garden',
    type: 'Gardens',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),

  Activity(
    imageUrl: 'assets/images/r6.jpg',
    name: 'Nyari Dam',
    type: 'Dams',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Activity> amritsarActivities = [
  Activity(
    imageUrl: 'assets/images/a1.jpg',
    name: 'Golden Temple',
    type: 'Religious Sites',
    startTimes: ['10:00 am', '05:00 pm'],
    rating: 5,

  ),
  Activity(
    imageUrl: 'assets/images/a2.jpg',
    name: 'The Partition Museum',
    type: 'History Museums',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 4,
    price: 200,
  ),
  Activity(
    imageUrl: 'assets/images/a3.jpg',
    name: 'Gobindgarh Fort',
    type: 'Historic Sites',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
    price: 300,
  ),

  Activity(
    imageUrl: 'assets/images/a4.jpg',
    name: 'Akal Takht',
    type: 'Religious Site',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 5,
  ),

  Activity(
    imageUrl: 'assets/images/a5.jpg',
    name: 'Jallianwala Bagh',
    type: 'Sightseeing Tour',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
  ),

  Activity(
    imageUrl: 'assets/images/a6.jpg',
    name: 'Gurudwara Bir Baba Budha Sahib',
    type: 'Religious Sites',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
  ),

  Activity(
    imageUrl: 'assets/images/a7.jpg',
    name: 'Durgiana Temple',
    type: 'Religious Sites',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 4,
  ),

  Activity(
    imageUrl: 'assets/images/a8.jpg',
    name: 'Tarn Taran Sahib',
    type: 'Religious Sites',
    startTimes: ['09:30 pm', '07:00 pm'],
    rating: 5,
  ),
];



List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/vadodara.jpg',
    city: 'Vadodara',
    country: 'India',
    description: 'Visit Vadodara for an amazing and unforgettable adventure....',
    activities: vadodaraActivities,
  ),
  Destination(
    imageUrl: 'assets/images/newdelhi.jpg',
    city: 'New Delhi',
    country: 'India',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.....',
    activities: delhiActivities,
  ),
  Destination(
    imageUrl: 'assets/images/mumbai.jpg',
    city: 'Mumbai',
    country: 'India',
    description: 'Visit Mumbai for an amazing and unforgettable adventure.....',
    activities: mumbaiActivities,
  ),
  
  Destination(
    imageUrl: 'assets/images/kashmir.jpg',
    city: 'Kashmir',
    country: 'India',
    description: 'Visit Kashmir for an amazing and unforgettable adventure.....',
    activities: kashmirActivities,
  ),
  Destination(
    imageUrl: 'assets/images/goa.jpg',
    city: 'Goa',
    country: 'India',
    description: 'Visit Goa for an amazing and unforgettable adventure.....',
    activities: goaActivities,
  ),

  Destination(
    imageUrl: 'assets/images/surat.jpg',
    city: 'Surat',
    country: 'India',
    description: 'Surat is a city in the western Indian state of Gujarat....',
    activities: suratActivities,
  ),

  Destination(
    imageUrl: 'assets/images/hyderabad.jpeg',
    city: 'Hyderabad',
    country: 'India',
    description: 'Hyderabad, city, Telangana state, south-central India....',
    activities: goaActivities,
  ),

  Destination(
    imageUrl: 'assets/images/chennai.jpeg',
    city: 'Chennai',
    country: 'India',
    description: 'Known as the “Gateway to South India,....',
    activities: chennaiActivities,
  ),

  Destination(
    imageUrl: 'assets/images/jaipur.jpeg',
    city: 'Jaipur',
    country: 'India',
    description: 'The city is surrounded by hills and dotted with forts....',
    activities: jaipurActivities,
  ),

  Destination(
    imageUrl: 'assets/images/lucknow.jpeg',
    city: 'Lucknow',
    country: 'India',
    description: 'A kaleidoscope of modern structures and British-style markets and squares...',
    activities: lucknowActivities,
  ),

  Destination(
    imageUrl: 'assets/images/agra.jpeg',
    city: 'Agra',
    country: 'India',
    description: 'Visit Agra for an amazing and unforgettable adventure....',
    activities: agraActivities,
  ),

  Destination(
    imageUrl: 'assets/images/bhopa.jpeg',
    city: 'Bhopal',
    country: 'India',
    description: 'Visit Bhopal for an amazing and unforgettable adventure....',
    activities: bhopalActivities,
  ),

  Destination(
    imageUrl: 'assets/images/indore.jpeg',
    city: 'Indore',
    country: 'India',
    description: 'Visit Indore for an amazing and unforgettable adventure....',
    activities: indoreActivities,
  ),

  Destination(
    imageUrl: 'assets/images/rajkot.jpeg',
    city: 'Rajkot',
    country: 'India',
    description: 'Visit Rajkot for an amazing and unforgettable adventure....',
    activities: rajkotActivities,
  ),

  Destination(
    imageUrl: 'assets/images/amritsar.jpeg',
    city: 'Amritsar',
    country: 'India',
    description: 'Visit Amritsar for an amazing and unforgettable adventure...',
    activities: amritsarActivities,
  ),



];