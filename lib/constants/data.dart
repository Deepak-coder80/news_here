import 'package:news_app/models/category_model.dart';

List<CategoryModel> getCategories() {
  // ignore: deprecated_member_use
  List<CategoryModel> mycata = <CategoryModel>[];
  CategoryModel categoryModel = new CategoryModel();

  //1
  categoryModel.CategoryName = "Business";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80";
  mycata.add(categoryModel);
  //2
  categoryModel = new CategoryModel();
  categoryModel.CategoryName = "Entertainment";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  mycata.add(categoryModel);
  //3
  categoryModel = new CategoryModel();
  categoryModel.CategoryName = "Genaral";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  mycata.add(categoryModel);
  //4
  categoryModel = new CategoryModel();
  categoryModel.CategoryName = "Health";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80";
  mycata.add(categoryModel);
  //5
  categoryModel = new CategoryModel();
  categoryModel.CategoryName = "Science";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80";
  mycata.add(categoryModel);
  //5
  categoryModel = new CategoryModel();
  categoryModel.CategoryName = "Sports";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80";
  mycata.add(categoryModel);
  //5
  categoryModel = new CategoryModel();
  categoryModel.CategoryName = "Technology";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  mycata.add(categoryModel);
  return mycata;
}
