## Redux Practice
### Reduxの強み
Reduxの強みは、アプリケーション全体の状態を単一のストアで一元管理し、actionとreducerで状態変更を制御することで疎結合を保つ点にある。一方、Fluxは複数のストアで状態を管理する設計で、ストア間の依存関係が生じる場合があり、管理が複雑になりやすい。Reduxでは単一ストアを採用することで状態を簡単に操作でき、リデューサーの分割によって拡張性も実現している。

本プロジェクトでは、単一のストアのモデルを持ちつつ、`redux/store` 内でストアのプロパティごとに `StateNotifierProvider` を用意している。これにより、不要な画面の再描画を抑えることができる。

### プロジェクトの構成
```markdown
lib/
  ├── model/
  │   ├── todo/
  ├── redux/
  │   ├── action/
  │   ├── reducer/
  │   ├── store/
  ├── resource/
  ├── ui/
  │   ├── component/
  │   ├── screen/
  ├── main.dart
```