import 'package:wallpaper_app/model/categories_model.dart';

List<CategoriesModel> getCategories(){

  List<CategoriesModel> categories = new List();
  CategoriesModel categoriesModel = new CategoriesModel();

categoriesModel.imgUrl ='https://ichef.bbci.co.uk/news/976/cpsprodpb/12A9B/production/_111434467_gettyimages-1143489763.jpg';
categoriesModel.categoriesName = 'cats';
categories.add(categoriesModel);
categoriesModel = new CategoriesModel();

  categoriesModel.imgUrl ='https://ichef.bbci.co.uk/news/976/cpsprodpb/12A9B/production/_111434467_gettyimages-1143489763.jpg';
  categoriesModel.categoriesName = 'cats2';
  categories.add(categoriesModel);

  categoriesModel.imgUrl ='https://ichef.bbci.co.uk/news/976/cpsprodpb/12A9B/production/_111434467_gettyimages-1143489763.jpg';
  categoriesModel.categoriesName = 'cats3';
  categories.add(categoriesModel);

  categoriesModel.imgUrl ='https://ichef.bbci.co.uk/news/976/cpsprodpb/12A9B/production/_111434467_gettyimages-1143489763.jpg';
  categoriesModel.categoriesName = 'cats4';
  categories.add(categoriesModel);



}