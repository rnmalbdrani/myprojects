// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:core';

class DraggableItem {
  String image;
  String audio;
  DraggableItem({
    required this.image,
    required this.audio,
  });

  DraggableItem copyWith({
    String? image,
    String? audio,
  }) {
    return DraggableItem(
      image: image ?? this.image,
      audio: audio ?? this.audio,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'audio': audio,
    };
  }

  factory DraggableItem.fromMap(Map<String, dynamic> map) {
    return DraggableItem(
      image: map['image'] as String,
      audio: map['audio'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DraggableItem.fromJson(String source) =>
      DraggableItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'DraggableItem(image: $image, audio: $audio)';

  @override
  bool operator ==(covariant DraggableItem other) {
    if (identical(this, other)) return true;

    return other.image == image && other.audio == audio;
  }

  @override
  int get hashCode => image.hashCode ^ audio.hashCode;
}
