import 'package:hypermart/core/constants/image_manager.dart';

//Bu sınıf, uygulamanın farklı bölümlerinde kullanılacak olan metin ve görüntü sabitlerini tek bir yerde toplamak için kullanılabilir. 

class APPTextConstatnts {
  static List onboarding = [
    {
      'head': 'A broad source of inspiration',
      'subTitle': 'Find inspiring images for you',
    },
    {
      'head': 'A sharing place where everyone can enjoy',
      'subTitle': 'Discover your favorite images',
    },
    {
      'head': 'Come up with good ideas',
      'subTitle': 'Save the images you like to your gallery',
    },
  ];

  

  static List images = [
    ImageManager.imageTest5,
    ImageManager.imageTest1,
    ImageManager.imageTest2,
    ImageManager.imageTest3,
    ImageManager.imageTest4,
    ImageManager.imageTest2,
  ];

  static List allCategory = [
    {
      'category_name': 'All Photo',
      'category_image': ImageManager.homeiconoutline,
    },
    {
      'category_name': 'Nature',
      'category_image': ImageManager.homeiconoutline,
    },
    {
      'category_name': 'portraits',
      'category_image': ImageManager.homeiconoutline,
    },
    {
      'category_name': 'Weddings',
      'category_image': ImageManager.homeiconoutline,
    },
    {
      'category_name': 'sky',
      'category_image': ImageManager.homeiconoutline,
    },
    {
      'category_name': 'autumn',
      'category_image': ImageManager.homeiconoutline,
    },
  ];

  static List accountTools = [
    {
      'title': 'My Photo',
      'image': ImageManager.iconBox,
    },
  
  ];
}
