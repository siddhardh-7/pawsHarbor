class Pet {
  String name = '';
  String type = '';
  String sex = '';
  bool isVaccinated = false;
  bool isAdopted = false;
  String? breed;
  String location = '';
  String primaryImage = '';
  List<String>? images;
  int age = 0;
  int price = 0;
  String created = '';
  String owner = '';
  String? description;

  Pet(
      {required this.name,
      required this.type,
      required this.sex,
      required this.isVaccinated,
      required this.isAdopted,
      String? breed,
      required this.location,
      required this.primaryImage,
      List<String>? images,
      required this.age,
      required this.price,
      required this.created,
      required this.owner,
      String? description}) {
    if (breed != null) {
      this.breed = breed;
    }
    if (images != null) {
      this.images = images;
    }
    if (description != null) {
      this.description = description;
    }
  }

  Pet.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    sex = json['sex'];
    isVaccinated = json['isVaccinated'];
    isAdopted = json['isAdopted'];
    breed = json['breed'];
    location = json['location'];
    primaryImage = json['primary_image'];
    images = json['images'].cast<String>();
    age = json['age'];
    price = json['price'];
    created = json['created'];
    owner = json['owner'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['type'] = type;
    data['sex'] = sex;
    data['isVaccinated'] = isVaccinated;
    data['isAdopted'] = isAdopted;
    data['breed'] = breed;
    data['location'] = location;
    data['primary_image'] = primaryImage;
    data['images'] = images;
    data['age'] = age;
    data['price'] = price;
    data['created'] = created;
    data['owner'] = owner;
    data['description'] = description;
    return data;
  }
}
