// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      accessToken: json['accessToken'] as String?,
      expiresIn: (json['expiresIn'] as num?)?.toInt(),
      tokenType: json['tokenType'] as String?,
      scope: json['scope'] as String?,
    );

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
  token: json['token'] as String?,
  userName: json['username'] as String?,
);
