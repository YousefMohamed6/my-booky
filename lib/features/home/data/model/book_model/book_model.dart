import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class BookModel {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  @override
  String toString() {
    return 'BookModel(kind: $kind, id: $id, etag: $etag, selfLink: $selfLink, volumeInfo: $volumeInfo, saleInfo: $saleInfo, accessInfo: $accessInfo, searchInfo: $searchInfo)';
  }

  factory BookModel.fromJsonData(Map<String, dynamic> json) => BookModel(
        kind: json['kind'] as String?,
        id: json['id'] as String?,
        etag: json['etag'] as String?,
        selfLink: json['selfLink'] as String?,
        volumeInfo: json['volumeInfo'] == null
            ? null
            : VolumeInfo.fromJsonData(
                json['volumeInfo'] as Map<String, dynamic>),
        saleInfo: json['saleInfo'] == null
            ? null
            : SaleInfo.fromJsonData(json['saleInfo'] as Map<String, dynamic>),
        accessInfo: json['accessInfo'] == null
            ? null
            : AccessInfo.fromJsonData(
                json['accessInfo'] as Map<String, dynamic>),
        searchInfo: json['searchInfo'] == null
            ? null
            : SearchInfo.fromJsonData(
                json['searchInfo'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJsonDate() => {
        'kind': kind,
        'id': id,
        'etag': etag,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo?.toJsonDate(),
        'saleInfo': saleInfo?.toJsonDate(),
        'accessInfo': accessInfo?.toJsonDate(),
        'searchInfo': searchInfo?.toJsonDate(),
      };
}
