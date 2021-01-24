import 'package:wallpaper_app/model/categories_model.dart';


List<CategoriesModel> getCategories(){

  List<CategoriesModel> categories = new List() ;
  CategoriesModel categoriesModel = new CategoriesModel();

categoriesModel.imgUrl ='https://jenmulligandesign.com/wp-content/uploads/2017/04/pexels-beach-tropical-scene-free-stock-photo.jpg';
categoriesModel.categoriesName = 'cats';
categories.add(categoriesModel);
categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl ='https://jenmulligandesign.com/wp-content/uploads/2017/04/pexels-beach-tropical-scene-free-stock-photo.jpg';
  categoriesModel.categoriesName = 'cats2';
  categories.add(categoriesModel);

  categoriesModel.imgUrl ='https://jenmulligandesign.com/wp-content/uploads/2017/04/pexels-beach-tropical-scene-free-stock-photo.jpg';
  categoriesModel.categoriesName = 'cats3';
  categories.add(categoriesModel);

  categoriesModel.imgUrl ='https://jenmulligandesign.com/wp-content/uploads/2017/04/pexels-beach-tropical-scene-free-stock-photo.jpg';
  categoriesModel.categoriesName = 'cats4';
  categories.add(categoriesModel);

  return categories;


}