class NewsResponseModel {
  String status;
  String userTier;
  int total;
  int startIndex;
  int pageSize;
  int currentPage;
  int pages;
  String orderBy;
  List<Results> results;

  NewsResponseModel(
      {this.status,
      this.userTier,
      this.total,
      this.startIndex,
      this.pageSize,
      this.currentPage,
      this.pages,
      this.orderBy,
      this.results});

  NewsResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    userTier = json['userTier'];
    total = json['total'];
    startIndex = json['startIndex'];
    pageSize = json['pageSize'];
    currentPage = json['currentPage'];
    pages = json['pages'];
    orderBy = json['orderBy'];
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['userTier'] = this.userTier;
    data['total'] = this.total;
    data['startIndex'] = this.startIndex;
    data['pageSize'] = this.pageSize;
    data['currentPage'] = this.currentPage;
    data['pages'] = this.pages;
    data['orderBy'] = this.orderBy;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String id;
  String type;
  String sectionId;
  String sectionName;
  String webPublicationDate;
  String webTitle;
  String webUrl;
  String apiUrl;
  bool isHosted;
  String pillarId;
  String pillarName;

  Results(
      {this.id,
      this.type,
      this.sectionId,
      this.sectionName,
      this.webPublicationDate,
      this.webTitle,
      this.webUrl,
      this.apiUrl,
      this.isHosted,
      this.pillarId,
      this.pillarName});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    sectionId = json['sectionId'];
    sectionName = json['sectionName'];
    webPublicationDate = json['webPublicationDate'];
    webTitle = json['webTitle'];
    webUrl = json['webUrl'];
    apiUrl = json['apiUrl'];
    isHosted = json['isHosted'];
    pillarId = json['pillarId'];
    pillarName = json['pillarName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['sectionId'] = this.sectionId;
    data['sectionName'] = this.sectionName;
    data['webPublicationDate'] = this.webPublicationDate;
    data['webTitle'] = this.webTitle;
    data['webUrl'] = this.webUrl;
    data['apiUrl'] = this.apiUrl;
    data['isHosted'] = this.isHosted;
    data['pillarId'] = this.pillarId;
    data['pillarName'] = this.pillarName;
    return data;
  }
}