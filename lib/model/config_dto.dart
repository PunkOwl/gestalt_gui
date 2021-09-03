// To parse this JSON data, do
//
//     final configDto = configDtoFromJson(jsonString);

import 'dart:convert';

class ConfigDto {
  ConfigDto({
    this.system,
    this.param,
  });

  SystemDto system;
  ParamDto param;

  factory ConfigDto.fromRawJson(String str) => ConfigDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConfigDto.fromJson(Map<String, dynamic> json) => ConfigDto(
    system: json["system"] == null ? null : SystemDto.fromJson(json["system"]),
    param: json["param"] == null ? null : ParamDto.fromJson(json["param"]),
  );

  Map<String, dynamic> toJson() => {
    "system": system == null ? null : system.toJson(),
    "param": param == null ? null : param.toJson(),
  };
}

class ParamDto {
  ParamDto({
    this.exportType,
    this.audioFile,
    this.displayText,
    this.hasBanner,
    this.ray,
    this.extraDataFile,
    this.videoExport,
  });

  String exportType;
  List<String> audioFile;
  List<String> displayText;
  bool hasBanner;
  int ray;
  String extraDataFile;
  VideoExport videoExport;

  factory ParamDto.fromRawJson(String str) => ParamDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ParamDto.fromJson(Map<String, dynamic> json) => ParamDto(
    exportType: json["exportType"] == null ? null : json["exportType"],
    audioFile: json["audioFile"] == null ? null : List<String>.from(json["audioFile"].map((x) => x)),
    displayText: json["displayText"] == null ? null : List<String>.from(json["displayText"].map((x) => x)),
    hasBanner: json["hasBanner"] == null ? null : json["hasBanner"],
    ray: json["ray"] == null ? null : json["ray"],
    extraDataFile: json["extraDataFile"] == null ? null : json["extraDataFile"],
    videoExport: json["videoExport"] == null ? null : VideoExport.fromJson(json["videoExport"]),
  );

  Map<String, dynamic> toJson() => {
    "exportType": exportType == null ? null : exportType,
    "audioFile": audioFile == null ? null : List<dynamic>.from(audioFile.map((x) => x)),
    "displayText": displayText == null ? null : List<dynamic>.from(displayText.map((x) => x)),
    "hasBanner": hasBanner == null ? null : hasBanner,
    "ray": ray == null ? null : ray,
    "extraDataFile": extraDataFile == null ? null : extraDataFile,
    "videoExport": videoExport == null ? null : videoExport.toJson(),
  };
}

class VideoExport {
  VideoExport({
    this.isVideoExport,
    this.usableCore,
    this.startFrame,
    this.endFrame,
  });

  bool isVideoExport;
  int usableCore;
  int startFrame;
  int endFrame;

  factory VideoExport.fromRawJson(String str) => VideoExport.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoExport.fromJson(Map<String, dynamic> json) => VideoExport(
    isVideoExport: json["isVideoExport"] == null ? null : json["isVideoExport"],
    usableCore: json["usableCore"] == null ? null : json["usableCore"],
    startFrame: json["startFrame"] == null ? null : json["startFrame"],
    endFrame: json["endFrame"] == null ? null : json["endFrame"],
  );

  Map<String, dynamic> toJson() => {
    "isVideoExport": isVideoExport == null ? null : isVideoExport,
    "usableCore": usableCore == null ? null : usableCore,
    "startFrame": startFrame == null ? null : startFrame,
    "endFrame": endFrame == null ? null : endFrame,
  };
}

class SystemDto {
  SystemDto({
    this.moodbarExecuteable,
    this.hqzExecutable,
    this.ffmpegExecutable,
    this.resourceDir,
    this.neuralStyle,
  });

  String moodbarExecuteable;
  String hqzExecutable;
  String ffmpegExecutable;
  String resourceDir;
  NeuralStyle neuralStyle;

  factory SystemDto.fromRawJson(String str) => SystemDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SystemDto.fromJson(Map<String, dynamic> json) => SystemDto(
    moodbarExecuteable: json["moodbarExecuteable"] == null ? null : json["moodbarExecuteable"],
    hqzExecutable: json["hqzExecutable"] == null ? null : json["hqzExecutable"],
    ffmpegExecutable: json["ffmpegExecutable"] == null ? null : json["ffmpegExecutable"],
    resourceDir: json["resourceDir"] == null ? null : json["resourceDir"],
    neuralStyle: json["neuralStyle"] == null ? null : NeuralStyle.fromJson(json["neuralStyle"]),
  );

  Map<String, dynamic> toJson() => {
    "moodbarExecuteable": moodbarExecuteable == null ? null : moodbarExecuteable,
    "hqzExecutable": hqzExecutable == null ? null : hqzExecutable,
    "ffmpegExecutable": ffmpegExecutable == null ? null : ffmpegExecutable,
    "resourceDir": resourceDir == null ? null : resourceDir,
    "neuralStyle": neuralStyle == null ? null : neuralStyle.toJson(),
  };
}

class NeuralStyle {
  NeuralStyle({
    this.executable,
    this.styleDir,
    this.contentDir,
  });

  String executable;
  String styleDir;
  String contentDir;

  factory NeuralStyle.fromRawJson(String str) => NeuralStyle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NeuralStyle.fromJson(Map<String, dynamic> json) => NeuralStyle(
    executable: json["executable"] == null ? null : json["executable"],
    styleDir: json["styleDir"] == null ? null : json["styleDir"],
    contentDir: json["contentDir"] == null ? null : json["contentDir"],
  );

  Map<String, dynamic> toJson() => {
    "executable": executable == null ? null : executable,
    "styleDir": styleDir == null ? null : styleDir,
    "contentDir": contentDir == null ? null : contentDir,
  };
}
