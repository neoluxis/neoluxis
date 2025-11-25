#import emoji: star, checkmark
#import "@preview/bone-resume:0.3.0": resume-init, resume-section

#show: resume-init.with(
  author: "李康峰",
  footer: [李康峰 #h(0.5em) #link(
      "https://me.neolux.eu.org",
    )],
)

#set text(font: ("Noto Serif CJK JP"), lang: "ja", region: "jp")

#let show_detail_proj = 1
#let show_duty = 1
#let projblock = 1

#stack(dir: ltr, spacing: 1fr, text(24pt)[*李康峰*], stack(
  spacing: 0.75em,
  [電話：+86 195 5816 1054],
  [メール：#link("mailto: li_kangfeng@outlook.com")[li_kangfeng\@outlook.com]],
), stack(
  spacing: 0.75em,
  [GitHub：#link("https://github.com/neoluxis")[github.com/neoluxis]],
  [個人サイト：#link("https://me.neolux.eu.org")[me.neolux.eu.org]],
), move(dy: -2em, box(height: 84pt, width: 60pt, image("shashin.jpg", width: 100%))),
)
#v(-4em)

== 学歴
#line(length: 100%)
中国計量大学 #h(2cm) 自動化専攻（在学中） #h(1fr) 2022年〜2026年

主な履修科目：機械学習、人工知能、コンピュータビジョン、組み込みシステム、自動制御理論
#v(1em)

== スキル
#line(length: 100%)

#let stars(num) = {
  for _ in range(num) {
    [#emoji.star]
  }
}

#let level(num, desc: none) = {
  if desc == none {
    if num < 4 {
      desc = "基礎"
    } else if num < 6 {
      desc = "習得"
    } else if num < 8 {
      desc = "熟練"
    } else {
      desc = "上級"
    }
  }
  [(#desc) #stars(num)]
}

#let skills_de_moi = grid(
  columns: (60pt, 1fr, auto),
  rows: auto,
  gutter: 6pt,
  "Python",
  [豊富な開発経験があり、Pythonを使った開発・データ処理・機械学習・深層学習・フロント／バックエンド開発に精通している],
  level(7),
  "Linux",
  [長年Linuxを使用し、システム管理、組み込みビジョンやDLアプリのデプロイ・デバッグにも対応可能],
  level(7),
  "コンピュータビジョン",
  [OpenCVによる画像処理に熟練しており、高効率でタスクを遂行可能],
  level(6),
  "PyTorch",
  [深層学習モデルの構築・最適化に熟練し、先端技術の実装も可能],
  level(6),
  "機械学習",
  [各種アルゴリズムを体系的に習得しており、柔軟なデータ対応力を持つ],
  level(6),
  "マイコン",
  [C言語で8051/STM32/TIマイコンを開発でき、JLCEDA/KiCADで回路設計・PCB作成可能],
  level(6),
  "YOLO",
  [YOLOv5/v8のソースコードに精通しており、分類・検出・セグメンテーション・姿勢推定の実装が可能],
  level(5),
  "ROS2",
  [ROS2の基本を理解しており、ロボット制御プログラムの設計が可能],
  level(5),
  "Unity",
  [C＃の基礎を理解し、UnityによるシミュレーションおよびROS2との連携に対応],
  level(4),
  "Flask",
  [Flaskフレームワークに精通し、Webサイト開発経験がある],
  level(4),
  "Webデザイン",
  [HTML/CSS/JavaScriptで静的ページの設計ができ、DreamweaverやFrontPageなどのツールも使用可能],
  level(4),
  "CAD",
  [SolidWorks、Blender、AutoCADを使用した2D/3D設計に熟練、Mayaによる基本的なモデリングも可能],
  level(4),
  "TensorFlow",
  [基礎的な知識があり、簡単なモデルの構築が可能],
  level(3),
  "外国語",
  [英語が流暢で、フランス語・スペイン語・日本語・韓国語・ルーマニア語の基本的な会話が可能],
  level(6)
)

#skills_de_moi
#v(1em)

== プロジェクト経験
#line(length: 100%)

#let exp_item(project, time, back, result, duty: none) = {
  if show_detail_proj == 1 {
    if projblock == 0 {
      [
        #project（#time）

        背景：#back

        #if show_duty==1 {
          [担当：#duty]
        }

        成果：#result
      ]
    } else {
      resume-section(
        [#project],
        time
      )[
        背景：#back

        #if show_duty==1 {
          [担当：#duty]
        }

        成果：#result
      ]
    }
  } else {
    if projblock == 0 {
      [
        #project（#time）

        成果：#result
      ]
    } else {
      resume-section(
        [#project],
        time
      )[
        成果：#result
      ]
    }
  }
}

#let projects = (
  (
  "全国大学生スマートカーコンテスト 医療部門",
  "2024.07",
  "病棟巡回を自動で行うロボットを開発",
  "全国一等賞を受賞",
  "YOLOによる物体検出・画像分割モデルを最適化し、モデルの量子化・組込み実装まで完了"
  ),
  (
  "浙江省エンジニアリング実践＆イノベーション大会",
  "2024.11",
  "多様なシーンに対応する物流搬送ロボットの開発",
  "浙江省一等賞を受賞、全国大会に進出",
  "物体認識、環境モデリング、経路計画モジュールを担当"
  ),
  (
  "浙江省ロボット競技会",
  "2025.05",
  "水中ロボットを製作し、ターゲットの3D再構成と音声認識を実現",
  "浙江省一等賞（優勝）を受賞",
  "音声・映像伝送、三次元再構成および分類アルゴリズムの実装を担当"
  ),
  (
  "浙江省電子設計コンテスト",
  "2024.08",
  "アルゴリズム対局と不正検出を実現するスマート対局装置を開発",
  "浙江省二等賞を受賞",
  "構造設計、視覚認識システムの開発、不正検出アルゴリズムと組込み実装を担当"
  ),
  (
  "浙江省スマートロボット創意大会",
  "2024.05",
  "家庭用自動清掃ロボットを開発",
  "浙江省三等賞を受賞",
  "ロボット設計、回路設計、STM32プログラム開発、通信・WeChatミニアプリ開発を担当"
  ),
  (
  "海康AIビジョンコンテスト",
  "2024.05",
  "3D深度カメラとDL技術により欠陥検出を実現",
  "検出精度95%・80%、優秀賞と資格証を獲得",
  "主要コードの実装とUI設計を主導"
  ),
  (
  "浙江省イノベーション起業コンテスト",
  "2023 - 2024",
  "連続体ロボットによる配管内溶接を実現",
  "特許申請、浙江省二等賞を受賞",
  "特許執筆を主導、ビジョン監視および溶接評価、3D設計を担当"
  ),
  (
  "国家級イノベーション起業プロジェクト",
  "2023 - 2025",
  "水中ロボットによる亀裂検出と自動修復",
  "プロジェクト完了、論文一件発表",
  "構造設計、ビジョン開発、検出・定位・再構成アルゴリズムを担当"
  ),
  (
  "浙江省物理実験＆科学技術イノベーション大会",
  "2024",
  "多センサによる芋頭収穫機を開発",
  "浙江省一等賞を受賞",
  "視覚システム設計と芋頭の認識・成熟度評価を担当"
  )
)

#for pro in projects {
  exp_item(
    pro.at(0),
    pro.at(1),
    pro.at(2),
    pro.at(3),
    duty: pro.at(4),
  )
}

#v(1em)

== 資格・証明書
#line(length: 100%)

+ 中国英語能力試験（CET-6）
+ 海康ロボット認定 初級ビジョンエンジニア

== 自己紹介
#line(length: 100%)

私は真面目で学習意欲が高く、新しい知識を積極的に吸収し続けています。学習力が高く、未知の知識にも素早く対応し応用できます。多様な興味を持ち、順応力があり、新たな挑戦を歓迎します。友好的な性格で、チームワークやリーダーシップ、問題解決力、実行力に優れています。楽観的かつストレス耐性があり、良好なコミュニケーション能力を持っています。
