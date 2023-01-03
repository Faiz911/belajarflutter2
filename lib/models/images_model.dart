class ImagesModel {
  int? id;
  String? url;

  ImagesModel({this.id, this.url});

  ImagesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
    };
  }
}
