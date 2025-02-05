import 'package:redux_practice/model/todo/rp_todo.dart';

const Map<String, List<RPToDo>> initialTodos = {
  'category1': [
    RPToDo(
      id: 'todo1',
      title: '買い物リストを作成する',
      categoryId: 'category1',
    ),
    RPToDo(
      id: 'todo2',
      title: '冷蔵庫の中身を確認する',
      categoryId: 'category1',
    ),
    RPToDo(
      id: 'todo3',
      title: '夕食の献立を考える',
      categoryId: 'category1',
    ),
  ],
  'category2': [
    RPToDo(
      id: 'todo4',
      title: '洗濯物をたたむ',
      categoryId: 'category2',
    ),
    RPToDo(
      id: 'todo5',
      title: '掃除機をかける',
      categoryId: 'category2',
    ),
    RPToDo(
      id: 'todo6',
      title: 'お風呂掃除をする',
      categoryId: 'category2',
    ),
  ],
  'category3': [
    RPToDo(
      id: 'todo7',
      title: '銀行で口座の確認',
      categoryId: 'category3',
    ),
    RPToDo(
      id: 'todo8',
      title: '光熱費の支払いをする',
      categoryId: 'category3',
    ),
    RPToDo(
      id: 'todo9',
      title: '保険の内容を見直す',
      categoryId: 'category3',
    ),
  ],
};
