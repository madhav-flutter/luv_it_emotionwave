class ProfileData {
  final bool? noProfileLeft;
  final String name;
  final String likes;
  final String imageUrl;
  final bool common;
    final String age;
  final String? subtitle;
  final Interets interests;

  ProfileData({
     this.noProfileLeft,
    required this.name,
    required this.likes,
    required this.imageUrl,
    required this.common,
    required this.age,
    required this.subtitle,
    required this.interests,
  });

  static List<ProfileData> profileData = [
    ProfileData(
      name: '잭과분홍콩나물',
      likes: '29,930',
      imageUrl: 'assets/images/image01.png',
      common: false,
      age: '25',
      subtitle: '2km 거리에 있음',
      interests:     Interets(
      smoke: false,
      handshake: false,
      workout: false,
      drink: false,
      infp: false,
    ),
    ),
    ProfileData(
      name: '잭과분홍콩나물',
      likes: '9,930',
      imageUrl: 'assets/images/image02.png',
      common: false,
      age: '29',
      subtitle:
          '서로 아껴주고 힘이 되어줄 사람 찾아요 선릉으로 직장 다니고 있고 여행 좋아해요 이상한 이야기하시는 분 바로 차단입니다',
      interests:     Interets(
      smoke: false,
      handshake: false,
      workout: false,
      drink: false,
      infp: false,
    ),
    ),
    ProfileData(
      name: '잭과분홍콩나물',
      likes: '92,390',
      imageUrl: 'assets/images/image03.png',
      common: true,
      age: '19',
      subtitle: null,
    interests:     Interets(
      smoke: true,
      handshake: true,
      workout: true,
      drink: true,
      infp: true,
    ),
    ),
    ProfileData(
      name: '잭과분홍콩나물',
      likes: '92,390',
      imageUrl: 'assets/images/image04.png',
      common: false,
      age: '19',
      subtitle: null,
     interests:     Interets(
      smoke: false,
      handshake: true,
      workout: true,
      drink: false,
      infp: true,
    ),
    ),
    ProfileData(
      name: '잭과분홍콩나물',
      likes: '92,390',
      imageUrl: 'assets/images/image05.png',
      common: false,
      age: '19',
      subtitle: null,
     interests:     Interets(
      smoke: true,
      handshake: false,
      workout: false,
      drink: true,
      infp: true,
    ),
    ),

    ProfileData(
      noProfileLeft: true,
      name: '',
      likes: '',
      imageUrl: '',
      common: false,
      age: '',
      subtitle: null,
     interests:     Interets(
      smoke: false,
      handshake: false,
      workout: false,
      drink: false,
      infp: false,
    ),
    ),
  ];
}


class Interets {
  //'smoke', 'handshake', 'workout', 'drink', 'infp'
  
final bool smoke;
final bool handshake;
final bool workout;
final bool drink;
final bool infp;
  Interets({
    required this.smoke,
    required this.handshake,
    required this.workout,
    required this.drink,
    required this.infp,
  });

  
}