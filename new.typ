#show heading: set text(font: "Noto Serif CJK SC")

// #show link: underline

// Uncomment the following lines to adjust the size of text
// The recommend resume text size is from `10pt` to `12pt`
#set text(
  size: 10pt,
)

// Feel free to change the margin below to best fit your own CV
#set page(
  margin: (x: 0.9cm, y: 1cm),
)

// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

#set par(justify: true)

#let chiline() = {
  v(-3pt)
  line(length: 100%)
  v(-5pt)
}

= 李康峰

#link("mailto:li_kangfeng@outlook.com")[li_kangfeng\@outlook.com] | +86 195 5816 1054 |
#link("https://github.com/neoluxis")[github.com/neoluxis]

#move(dx: 50em, dy: -5em, box(height: 60pt, width: 40pt, image("shashin.jpg", width: 100%))),

#v(-9em)

== 教育背景
#chiline()
中国计量大学 #h(1fr) 自动化专业（在读） #h(1fr) 2022-2026\
主修课程：机器学习、人工智能、机器视觉、嵌入式系统、自动控制理论
// #h(1fr) 平均绩点：3.34

#let exp_item(project, time, back, result, duty: none) = {
  [
    #project (#time)\
    - 背景：#back\
    - 职责：#duty\
    - 成果：#result
  ]
}

#let projects = (
  // [NEW TOP 1] 浙江省大学生工程实践与创新能力大赛 智能物流
  (
    // 核心关键字：全国特等奖，路径规划，场景建模
    [浙江省大学生工程实践与创新能力大赛 智能物流 (全国特等奖)],
    "2024.11-2025.08",
    "研发适应多变场景的物料搬运机器人，实现复杂环境下的自主导航与路径规划",
    "荣获浙江省一等奖，全国特等奖",
    "负责任务获取、物料识别、ROS2场景建模及路径规划模块的设计与实现",
  ),
  // [NEW TOP 2] 浙江省大学生机器人竞赛 水下机器人
  (
    // 核心关键字：水下，三维点云密集重建，SLAM基础
    [浙江省大学生机器人竞赛 - 水下目标三维重建 (冠军)],
    "2025.05",
    "制作水下机器人，完成对水下目标的高精度三维点云密集重建，并进行海洋生物声学识别",
    "荣获浙江省一等奖（冠军）",
    "负责音视频传输系统，复现水下三维重建（类SLAM）相关算法，并优化声学识别算法。",
  ),
  // [NEW TOP 3] 国家级大创 - 裂缝检测
  (
    // 核心关键字：裂缝检测，海洋建筑，视觉程序
    [国家级大学生创新创业项目 - 海洋建筑裂缝检测与修补],
    "2023 - 2025",
    "研发水下机器人，实现海洋建筑裂缝检测与自动修补",
    "项目成功结题，产出论文一篇",
    "负责机器人结构设计及视觉程序开发，实现裂缝检测、辅助水下定位与场景重建",
  ),

  (
    "全国大学生智能汽车竞赛 智慧医疗组 (全国一等奖)",
    "2024.07",
    "研发能自主完成病房巡检任务的轮式机器人",
    "荣获全国一等奖",
    "优化 YOLO 目标检测与图像分割模型，完成模型调优、改进及量化，并成功部署于嵌入式平台",
  ),

  (
    "全国大学生电子设计竞赛",
    "2025.08",
    "制作搭载激光云台的小车，使小车在地图任意位置能够快速控制云台指到靶心",
    "荣获全国二等奖",
    "负责靶子识别、坐标矫正，控制云台运动",
  ),

  (
    "海康启智杯机器视觉比赛",
    "2024.05",
    "利用3D深度相机与深度学习技术，实现焊接及产品表面缺陷检测",
    "检测准确率分别达到95%和80%，荣获优秀奖并获发视觉工程师证书",
    "主导核心代码编写，优化检测流程及软件界面设计",
  ),
  (
    "浙江省大学生创新创业比赛",
    "2023 - 2024",
    "针对管道焊接设备短板，研发连续体机器人实现管内焊接",
    "申请专利并荣获浙江省二等奖",
    "主导专利撰写，负责视觉监控与焊接效果评估算法测试，以及机器人3D模型设计",
  ),
)

== 项目经历
#chiline()

#for pro in projects {
  [
    + #exp_item(
        pro.at(0),
        pro.at(1),
        pro.at(2),
        pro.at(3),
        duty: pro.at(4),
      )

  ]
}

== 核心技能
#chiline()

#grid(
  columns: (70pt, 1fr),
  rows: auto,
  gutter: 6pt,
  // row-gutter: 0.75em,

  [ROS2], [熟练使用 ROS2 设计机器人控制程序；具备 SLAM、导航与运动规划基础],

  [机器视觉], [深入掌握计算机视觉技术 (OpenCV)，应用于目标检测、分割及三维重建],

  [嵌入式开发], [熟练使用C语言进行 STM32 单片机程序设计；能够进行原理图/PCB设计],

  "Python", [有丰富的项目开发经验；熟练使用 PyTorch/YOLOv5/v8 进行深度学习模型构建、优化及部署],

  "Linux", [长期使用 Linux，熟悉嵌入式 Linux 平台视觉算法部署与调试],

  "CAD/仿真", [熟练使用 SolidWorks, Blender 进行 3D 设计；了解 Mujoco 机器人仿真开发],

  "TensorFlow", [基础了解，能实现深度学习模型并训练部署],
)

== 所获证书和奖励
#chiline()

#list(
  indent: 1em,
  [全国大学生工程实践与创新能力大赛全国特等奖],
  [浙江省大学生机器人竞赛冠军],
  [全国大学生智能汽车竞赛全国一等奖],
  [全国大学生电子设计竞赛全国二等奖],
  [CET 6级证书],
  [海康机器人认证初级工程师证书],
)
