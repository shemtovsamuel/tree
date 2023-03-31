import 'package:mobx/mobx.dart';
import '../model/tree_model.dart';

part 'home_page_controller.g.dart';
// to generate .g.dart file run this command in terminal : flutter pub run build_runner build

class HomePageController = _HomePageController with _$HomePageController;

abstract class _HomePageController with Store {
  @observable
  int rows = 10;

  @observable
  int start = 0;

  @observable
  List<TreeModel> treeList = [];

  @observable
  bool isLoading = false;

  @action
  void incrementStart() {
    start += rows;
  }

  @action
  void addTree(List<TreeModel> value) {
    treeList.addAll(value);
    treeList =
        treeList; // il s'agit d'un hack pour que mobx détecte le changement
  }

  @action
  void setLoadingTrue() {
    isLoading = true;
  }

  @action
  void setLoadingFalse() {
    isLoading = false;
  }

  @action
  List<TreeModel> getTreeList() {
    return treeList;
  }
}
