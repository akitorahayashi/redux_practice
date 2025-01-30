## Redux Practice
### Reduxの強み
Reduxの強みは、アプリケーション全体の状態を単一のストアで一元管理し、actionとreducerで状態変更を制御することで予測可能性を保つ点である。一方、Fluxは複数のストアで状態を管理する設計で、ストア間の依存関係が生じる場合があり、管理が複雑になりやすい。Reduxでは単一ストアを採用することで状態を簡単に操作でき、リデューサーの分割によって拡張性も実現している。

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