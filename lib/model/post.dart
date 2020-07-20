class Post {
  List<Posts> _posts;

  Post({List<Posts> posts}) {
    this._posts = posts;
  }

  List<Posts> get posts => _posts;
  set posts(List<Posts> posts) => _posts = posts;

  Post.fromJson(Map<String, dynamic> json) {
    if (json['posts'] != null) {
      _posts = new List<Posts>();
      json['posts'].forEach((v) {
        _posts.add(new Posts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._posts != null) {
      data['posts'] = this._posts.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Posts {
  int _id;
  String _resName;
  String _menuName;
  String _price;
  String _image;
  String _review;
  String _resAddress;
  String _title;
  Null _userId;
  CategoryId _categoryId;
  TownshipId _townshipId;

  Posts(
      {int id,
        String resName,
        String menuName,
        String price,
        String image,
        String review,
        String resAddress,
        String title,
        Null userId,
        CategoryId categoryId,
        TownshipId townshipId}) {
    this._id = id;
    this._resName = resName;
    this._menuName = menuName;
    this._price = price;
    this._image = image;
    this._review = review;
    this._resAddress = resAddress;
    this._title = title;
    this._userId = userId;
    this._categoryId = categoryId;
    this._townshipId = townshipId;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get resName => _resName;
  set resName(String resName) => _resName = resName;
  String get menuName => _menuName;
  set menuName(String menuName) => _menuName = menuName;
  String get price => _price;
  set price(String price) => _price = price;
  String get image => _image;
  set image(String image) => _image = image;
  String get review => _review;
  set review(String review) => _review = review;
  String get resAddress => _resAddress;
  set resAddress(String resAddress) => _resAddress = resAddress;
  String get title => _title;
  set title(String title) => _title = title;
  Null get userId => _userId;
  set userId(Null userId) => _userId = userId;
  CategoryId get categoryId => _categoryId;
  set categoryId(CategoryId categoryId) => _categoryId = categoryId;
  TownshipId get townshipId => _townshipId;
  set townshipId(TownshipId townshipId) => _townshipId = townshipId;

  Posts.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _resName = json['res_name'];
    _menuName = json['menu_name'];
    _price = json['price'];
    _image = json['image'];
    _review = json['review'];
    _resAddress = json['res_address'];
    _title = json['title'];
    _userId = json['user_id'];
    _categoryId = json['category_id'] != null
        ? new CategoryId.fromJson(json['category_id'])
        : null;
    _townshipId = json['township_id'] != null
        ? new TownshipId.fromJson(json['township_id'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['res_name'] = this._resName;
    data['menu_name'] = this._menuName;
    data['price'] = this._price;
    data['image'] = this._image;
    data['review'] = this._review;
    data['res_address'] = this._resAddress;
    data['title'] = this._title;
    data['user_id'] = this._userId;
    if (this._categoryId != null) {
      data['category_id'] = this._categoryId.toJson();
    }
    if (this._townshipId != null) {
      data['township_id'] = this._townshipId.toJson();
    }
    return data;
  }
}

class CategoryId {
  int _id;
  String _name;

  CategoryId({int id, String name}) {
    this._id = id;
    this._name = name;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;

  CategoryId.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    return data;
  }
}

class TownshipId {
  int _townshipId;
  String _name;

  TownshipId({int townshipId, String name}) {
    this._townshipId = townshipId;
    this._name = name;
  }

  int get townshipId => _townshipId;
  set townshipId(int townshipId) => _townshipId = townshipId;
  String get name => _name;
  set name(String name) => _name = name;

  TownshipId.fromJson(Map<String, dynamic> json) {
    _townshipId = json['township_id'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['township_id'] = this._townshipId;
    data['name'] = this._name;
    return data;
  }
}