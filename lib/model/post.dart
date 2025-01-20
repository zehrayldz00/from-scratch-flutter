class Post{
  final String title;

  Post({required this.title});

  factory Post.fromJson(Map <String, dynamic> json){
    return Post(title: json['title']);
  }

  toJson(){
    Map <String, dynamic> data = new Map<String, dynamic>();
    data ['title'] = this.title;
    return data;
  }

}