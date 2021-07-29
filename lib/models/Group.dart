import 'package:flutter/material.dart';
import 'package:travel/models/User.dart';

class Group {
  final String name, image;
  final List<User> users;

  Group({
    @required this.users,
    @required this.name,
    @required this.image,
  });
}

List<Group> telegramGroups = [
  Group(
    users: users..shuffle(),
    name: "Cycling @ SG",
    image: "assets/images/Magical_World.png",
  ),
  Group(
    users: users..shuffle(),
    name: "Baking Bad",
    image: "assets/images/Magical_World.png",
  ),
  Group(
    users: users..shuffle(),
    name: "SG Promo",
    image: "assets/images/Magical_World.png",
  ),
];

List<Group> facebookGroups = [
  Group(
    users: [user1, user3],
    name: "SG Vigilantes",
    image: "assets/images/Magical_World.png",
  ),
  Group(
    users: [user3, user1],
    name: "Movie No.1",
    image: "assets/images/Magical_World.png",
  ),
  Group(
    users: users..shuffle(),
    name: "Expat Unite",
    image: "assets/images/Magical_World.png",
  ),
];

List<User> users = [user1, user2, user3];