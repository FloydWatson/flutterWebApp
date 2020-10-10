class Project {
  String title;
  String body;
  String gitLink;
  String imagePath;
  String liveLink;

  Project({this.title, this.body, this.gitLink, this.imagePath, this.liveLink});

  Project.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
    imagePath = json['imagePath'];
    gitLink = json['gitLink'];

    liveLink = json['liveLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['body'] = this.body;
    data['imagePath'] = this.imagePath;
    data['gitLink'] = this.gitLink;

    data['liveLink'] = this.liveLink;
    return data;
  }
}
