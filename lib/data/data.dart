import 'package:wallpaper_app/model/categories_model.dart';


List<CategoriesModel> getCategories(){

  List<CategoriesModel> categories = new List() ;
  CategoriesModel categoriesModel = new CategoriesModel();

categoriesModel.imgUrl ="https://c.files.bbci.co.uk/41CF/production/_109474861_angrycat-index-getty3-3.jpg";
categoriesModel.categoriesName = 'cats';
categories.add(categoriesModel);
categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl ="https://c.files.bbci.co.uk/41CF/production/_109474861_angrycat-index-getty3-3.jpg";
  categoriesModel.categoriesName = 'cats2';
  categories.add(categoriesModel);

  categoriesModel.imgUrl ="https://c.files.bbci.co.uk/41CF/production/_109474861_angrycat-index-getty3-3.jpg";
  categoriesModel.categoriesName = 'cats3';
  categories.add(categoriesModel);

  categoriesModel.imgUrl ="https://c.files.bbci.co.uk/41CF/production/_109474861_angrycat-index-getty3-3.jpg";
  categoriesModel.categoriesName = 'cats4';
  categories.add(categoriesModel);

  return categories;


}