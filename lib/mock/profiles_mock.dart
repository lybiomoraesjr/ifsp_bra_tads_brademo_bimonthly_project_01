import 'package:flutter_application_1/constants/app_assets.dart';
import 'package:flutter_application_1/shared/models/person_model.dart';

final mockProfiles = [
  Person(
    id: '1',
    fullName: 'Jessica Jones',
    age: 27,
    location: 'San Francisco, USA',
    profilePicture: AppAssets.mockProfilePicture,
    albumImages: [
      AppAssets.mockCoupleInLoveAlbum,
      AppAssets.mockDjAlbum,
      AppAssets.mockCityAlbum,
      AppAssets.mockCoupleInLoveAlbum,
      AppAssets.mockCoupleInLoveAlbum,
      AppAssets.mockCellphoneCaseAlbum,
      AppAssets.mockDjAlbum,
      AppAssets.mockCityAlbum,
      AppAssets.mockIcyMountainsAlbum,
    ],
    friends: 2000,
    comments: 89,
    bio: 'An artist of considerable range, Jessica name taken by Melbourne...',
  ),
];
