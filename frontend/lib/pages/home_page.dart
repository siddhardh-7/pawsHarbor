import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend/pages/details_page.dart';

import '../models/pet_model.dart';

enum Category { all, dog, cat, bird, other }

class HomePage extends StatefulWidget {
  static String id = '/';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Category _category = Category.all;
  List<Pet> petsList = [
    Pet(
      name: 'Buddy',
      type: 'dog',
      sex: 'Male',
      isVaccinated: true,
      isAdopted: false,
      breed: 'Golden Retriever',
      location: 'San Francisco',
      primaryImage:
          "https://images.unsplash.com/photo-1581888227599-779811939961?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      age: 2,
      price: 1000,
      created: '2022-01-01',
      owner: 'John Doe',
      description:
          'Buddy is a very friendly dog. He loves to play with kids and other dogs.',
    ),
    Pet(
      name: 'Kitty',
      type: 'cat',
      sex: 'Female',
      isVaccinated: true,
      isAdopted: false,
      breed: 'American Wirehair',
      location: 'San Francisco',
      primaryImage:
          "https://images.unsplash.com/photo-1491485880348-85d48a9e5312?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      age: 1,
      price: 500,
      created: '2022-01-01',
      owner: 'Jack Son',
      description:
          'Kitty is a very friendly dog. He loves to play with kids and other dogs.',
    ),
    Pet(
        name: 'Max',
        type: 'dog',
        sex: 'Male',
        isVaccinated: true,
        isAdopted: false,
        breed: 'Labrador Retriever',
        location: 'New York',
        primaryImage:
            "https://images.unsplash.com/photo-1605897472359-85e4b94d685d?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        age: 3,
        price: 1200,
        created: '2022-02-15',
        owner: 'Jane Smith',
        description:
            'Max is an energetic and loyal dog. Enjoys outdoor activities.'),
    Pet(
        name: 'Whiskers',
        type: 'cat',
        sex: 'Female',
        isVaccinated: true,
        isAdopted: false,
        breed: 'Siamese',
        location: 'Los Angeles',
        primaryImage:
            "https://images.unsplash.com/photo-1488740304459-45c4277e7daf?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        age: 1,
        price: 800,
        created: '2022-03-10',
        owner: 'Michael Johnson',
        description:
            'Whiskers is a playful and independent cat. Enjoys climbing.'),
    Pet(
        name: 'Tweetie',
        type: 'bird',
        sex: 'Male',
        isVaccinated: false,
        isAdopted: true,
        breed: 'Parakeet',
        location: 'Chicago',
        primaryImage:
            "https://images.unsplash.com/photo-1614226355028-9eb93b25cb04?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        age: 1,
        price: 50,
        created: '2022-04-05',
        owner: 'Emily Davis',
        description: 'Tweetie is a colorful parakeet. Loves to mimic sounds.'),
    Pet(
        name: 'Goldie',
        type: 'other',
        sex: 'Female',
        isVaccinated: false,
        isAdopted: false,
        breed: 'Goldfish',
        location: 'Miami',
        primaryImage:
            "https://images.unsplash.com/photo-1628006020983-5f032bedb369?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        age: 1,
        price: 20,
        created: '2022-05-20',
        owner: 'Robert White',
        description: 'Goldie is a tiny goldfish. Requires a fish tank.'),
    Pet(
        name: 'Fluffy',
        type: 'cat',
        sex: 'Male',
        isVaccinated: true,
        isAdopted: false,
        breed: 'Persian',
        location: 'San Francisco',
        primaryImage:
            "https://images.unsplash.com/photo-1603349136483-c9087327668c?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        age: 2,
        price: 1000,
        created: '2022-06-15',
        owner: 'Amanda Taylor',
        description: 'Fluffy is a gentle Persian cat. Enjoys lounging.'),
    Pet(
        name: 'Rocky',
        type: 'dog',
        sex: 'Male',
        isVaccinated: true,
        isAdopted: true,
        breed: 'German Shepherd',
        location: 'Seattle',
        primaryImage:
            "https://images.unsplash.com/photo-1619980263701-ff2df2e12423?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        age: 4,
        price: 1500,
        created: '2022-07-10',
        owner: 'Chris Brown',
        description:
            'Rocky is a protective German Shepherd. Great with families.'),
    Pet(
        name: 'Coco',
        type: 'dog',
        sex: 'Female',
        isVaccinated: true,
        isAdopted: false,
        breed: 'Poodle',
        location: 'Dallas',
        primaryImage:
            "https://images.unsplash.com/photo-1605244863941-3a3ed921c60d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8UG9vZGxlfGVufDB8MHwwfHx8MA%3D%3D",
        age: 2,
        price: 800,
        created: '2022-08-25',
        owner: 'Daniel Miller',
        description: 'Coco is a friendly Poodle. Enjoys playing fetch.'),
    Pet(
        name: 'Midnight',
        type: 'cat',
        sex: 'Male',
        isVaccinated: true,
        isAdopted: false,
        breed: 'Black Shorthair',
        location: 'Denver',
        primaryImage:
            "https://images.unsplash.com/photo-1616152393908-3785ed107d25?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fEJsYWNrJTIwU2hvcnRoYWlyfGVufDB8MHwwfHx8MA%3D%3D",
        age: 1,
        price: 700,
        created: '2022-09-18',
        owner: 'Olivia Clark',
        description: 'Midnight is a sleek black cat. Loves to nap in the sun.'),
    Pet(
        name: 'Sunny',
        type: 'bird',
        sex: 'Unknown',
        isVaccinated: false,
        isAdopted: false,
        breed: 'Cockatiel',
        location: 'Houston',
        primaryImage:
            "https://images.unsplash.com/photo-1579256353657-12115ca794b7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Q29ja2F0aWVsfGVufDB8MHwwfHx8MA%3D%3D",
        age: 1,
        price: 60,
        created: '2022-10-12',
        owner: 'Sophia Turner',
        description: 'Sunny is a cheerful Cockatiel. Whistles tunes.'),
    Pet(
        name: 'Bubbles',
        type: 'other',
        sex: 'Unknown',
        isVaccinated: false,
        isAdopted: true,
        breed: 'Betta',
        location: 'Orlando',
        primaryImage:
            "https://images.unsplash.com/photo-1534575180408-b7d7c0136ee8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8QmV0dGF8ZW58MHwwfDB8fHww",
        age: 1,
        price: 30,
        created: '2022-11-05',
        owner: 'Matthew Wilson',
        description: 'Bubbles is a vibrant Betta fish. Requires a cozy tank.'),
    Pet(
        name: 'Misty',
        type: 'cat',
        sex: 'Female',
        isVaccinated: true,
        isAdopted: false,
        breed: 'Ragdoll',
        location: 'Phoenix',
        primaryImage:
            "https://images.unsplash.com/photo-1610973053414-abc5309f0a8c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8UmFnZG9sbHxlbnwwfDB8MHx8fDA%3D",
        age: 3,
        price: 1200,
        created: '2022-12-01',
        owner: 'Isabella Martin',
        description: 'Misty is a graceful Ragdoll cat. Enjoys cuddling.'),
    Pet(
        name: 'Rusty',
        type: 'dog',
        sex: 'Male',
        isVaccinated: true,
        isAdopted: true,
        breed: 'Boxer',
        location: 'Portland',
        primaryImage:
            "https://images.unsplash.com/photo-1558349699-1e1c38c05eeb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Qm94ZXIlMjBkb2d8ZW58MHwwfDB8fHww",
        age: 3,
        price: 1100,
        created: '2023-01-15',
        owner: 'Andrew Garcia',
        description: 'Rusty is an energetic Boxer. Loves long walks.'),
  ];
  List<Pet> searchResults = [];

  void onQueryChanged(String query) {
    setState(() {
      searchResults = petsList
          .where(
              (item) => item.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55,
        leadingWidth: 150,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "location",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blueGrey,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    CupertinoIcons.arrowtriangle_down_circle_fill,
                    color: Colors.blueGrey,
                    size: 12,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.location_solid,
                    size: 20,
                  ),
                  Text(
                    "San Francisco",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade50,
              borderRadius: BorderRadius.circular(18),
            ),
            child: IconButton(
              onPressed: () {
                showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return SearchDialog(petsList: petsList);
                      ;
                    });
              },
              icon: const Icon(
                CupertinoIcons.search,
                size: 25,
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade50,
              borderRadius: BorderRadius.circular(18),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.bell,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/onBoard.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              const Text(
                "Categories",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _category = Category.all;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: _category == Category.all
                              ? const EdgeInsets.all(16)
                              : const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: _category == Category.all
                                ? Theme.of(context).primaryColor
                                : Colors.blueGrey.shade50,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Row(
                            children: [
                              Image(
                                image: AssetImage("assets/img/allCategory.png"),
                                width: 22,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                " All  ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _category = Category.dog;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: _category == Category.dog
                              ? const EdgeInsets.all(16)
                              : const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: _category == Category.dog
                                ? Theme.of(context).primaryColor
                                : Colors.blueGrey.shade50,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Row(
                            children: [
                              Image(
                                image: AssetImage("assets/img/dogCategory.png"),
                                width: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Dogs",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _category = Category.cat;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: _category == Category.cat
                              ? const EdgeInsets.all(16)
                              : const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: _category == Category.cat
                                ? Theme.of(context).primaryColor
                                : Colors.blueGrey.shade50,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Row(
                            children: [
                              Image(
                                image: AssetImage("assets/img/catCategory.png"),
                                width: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Cats",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _category = Category.bird;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: _category == Category.bird
                              ? const EdgeInsets.all(16)
                              : const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: _category == Category.bird
                                ? Theme.of(context).primaryColor
                                : Colors.blueGrey.shade50,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Row(
                            children: [
                              Image(
                                image:
                                    AssetImage("assets/img/birdCategory.png"),
                                width: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Birds",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _category = Category.other;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: _category == Category.other
                              ? const EdgeInsets.all(16)
                              : const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: _category == Category.other
                                ? Theme.of(context).primaryColor
                                : Colors.blueGrey.shade50,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Row(
                            children: [
                              Image(
                                image:
                                    AssetImage("assets/img/otherCategory.png"),
                                width: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Others",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                "Pets for Adoption",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              for (var i = 0; i < petsList.length; i++)
                if (_category == Category.all ||
                    _category.toString().split('.').last == petsList[i].type)
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailsPage(pet: petsList[i])),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(vertical: 7),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          const BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(0, 10),
                            blurRadius: 10,
                            spreadRadius: -3,
                          ),
                          const BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.05),
                            offset: Offset(0, 4),
                            blurRadius: 6,
                            spreadRadius: -3,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Hero(
                            tag: petsList[i],
                            child: Container(
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: NetworkImage(petsList[i].primaryImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 100,
                            width: 180,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    if (petsList[i].type == 'dog')
                                      const Image(
                                        image: AssetImage(
                                            "assets/img/dogCategory.png"),
                                        width: 20,
                                      )
                                    else if (petsList[i].type == 'cat')
                                      const Image(
                                        image: AssetImage(
                                            "assets/img/catCategory.png"),
                                        width: 20,
                                      )
                                    else if (petsList[i].type == 'bird')
                                      const Image(
                                        image: AssetImage(
                                            "assets/img/birdCategory.png"),
                                        width: 20,
                                      )
                                    else
                                      const Image(
                                        image: AssetImage(
                                            "assets/img/otherCategory.png"),
                                        width: 20,
                                      ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      petsList[i].name,
                                      style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    if (petsList[i].isVaccinated)
                                      const Icon(
                                        CupertinoIcons.checkmark_seal_fill,
                                        color: Colors.green,
                                        size: 20,
                                      )
                                    else
                                      const Icon(
                                        CupertinoIcons.xmark_seal_fill,
                                        color: Colors.red,
                                        size: 20,
                                      ),

                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      CupertinoIcons.location_solid,
                                      size: 20,
                                      color: Colors.blueGrey,
                                    ),
                                    Text(
                                      petsList[i].location,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade50,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        petsList[i].sex,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.pink.shade50,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(
                                        petsList[i].age.toString() + " years",
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.pink,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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

class GetTypeImage extends StatelessWidget {
  final String type;

  const GetTypeImage({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    if (type == 'dog') {
      return const Image(
        image: AssetImage("assets/img/dogCategory.png"),
        width: 20,
      );
    } else if (type == 'cat') {
      return const Image(
        image: AssetImage("assets/img/catCategory.png"),
        width: 20,
      );
    } else if (type == 'bird') {
      return const Image(
        image: AssetImage("assets/img/birdCategory.png"),
        width: 20,
      );
    } else {
      return const Image(
        image: AssetImage("assets/img/otherCategory.png"),
        width: 20,
      );
    }
  }
}

class SearchDialog extends StatefulWidget {
  final List<Pet> petsList;

  SearchDialog({required this.petsList});

  @override
  _SearchDialogState createState() => _SearchDialogState();
}

class _SearchDialogState extends State<SearchDialog> {
  List<Pet> searchResults = [];
  FocusNode myFocusNode = new FocusNode();

  @override
  void initState() {
    super.initState();
    searchResults = widget.petsList;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      title: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: TextField(
          focusNode: myFocusNode,
          onChanged: (query) {
            setState(() {
              searchResults = widget.petsList
                  .where((item) =>
                      item.name.toLowerCase().contains(query.toLowerCase()))
                  .toList();
            });
          },
          decoration: InputDecoration(
            hintText: "Search",
            labelStyle: const TextStyle(color: Colors.black),
            contentPadding: const EdgeInsets.only(left: 25),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
          ),
        ),
      ),
      content: Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(20),
        child: searchResults.isEmpty
            ? Center(child: Text("No results found"))
            :ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailsPage(pet: searchResults[index])),
                      );
                    },
                    child: ListTile(
                      leading: GetTypeImage(type: searchResults[index].type),
                      title: Text(searchResults[index].name),
                    ),
                  );
                },
              )
      ),
      actions: <Widget>[
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            child: const Text(
              'Close',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }
}
