#import emoji: star, checkmark
#import "@preview/bone-resume:0.3.0": resume-init, resume-section

#show: resume-init.with(
  author: "李康峰",
  footer: [李康峰 #h(0.5em) #link(
      "https://me.neolux.eu.org",
    )],
)

#set text(font: ("Noto Serif CJK SC"), lang: "zh", region: "cn")

// 是否展示项目详情，不展示则只显示标题，节省篇幅
#let show_detail_proj = 1
// 是否展示在项目中做了什么。如果不展示会有比较大的吹牛空间
#let show_duty = 1
// project bgblock
#let projblock = 1

#stack(dir: ltr, spacing: 1fr, text(24pt)[*李康峰*], stack(
  spacing: 0.75em,
  [电话: +86 195 5816 1054],
  [邮箱: #link("mailto: li_kangfeng@outlook.com")[li_kangfeng\@outlook.com]],
), stack(
  spacing: 0.75em,
  [GitHub: #link("https://github.com/neoluxis")[github.com/neoluxis]],
  [个人主页: #link("https://me.neolux.eu.org")[me.neolux.eu.org]],  
), move(dy: -2em, box(height: 84pt, width: 60pt, image("shashin.jpg", width: 100%))),
)
#v(-4em)

== 教育背景
#line(length: 100%)
中国计量大学 #h(2cm) 自动化专业（在读） #h(1fr) 2022-2026\

主修课程：机器学习、人工智能、机器视觉、嵌入式系统、自动控制理论 
// #h(1fr)平均绩点：3.01
#v(1em)

== 个人技能
#line(length: 100%)

#let stars(num) = {
  for _ in range(num) {
    [#emoji.star]
  }
}

#let level(num, desc: none) = {
  if desc == none {
    if num < 4 {
      desc = "了解"
    } else if num < 6 {
      desc = "掌握"
    } else if num < 8 {
      desc = "熟练"
    } else {
      desc = "精通"
    }
  }
  [(#desc) #stars(num)]
}

#let skills_de_moi = grid(
  columns: (60pt, 1fr, auto),
  rows: auto,
  gutter: 6pt,
  "Python",
  [有丰富的项目开发经验，能够熟练使用 Python 进行开发、数据处理、机器学习、深度学习、前后端开发等；了解常用库],
  level(7),
  "Linux",
  [长期使用 Linux，熟悉 Linux 系统管理，熟悉嵌入式 Linux 平台视觉算法和深度学习应用的部署与调试],
  level(7),
  "机器视觉",
  [深入掌握计算机视觉技术，能高效运用 OpenCV 完成图像处理任务],
  level(6),
  "PyTorch",
  [熟练构建和优化深度学习模型，能够高效复现前沿算法],
  level(6),
  "机器学习",
  [系统掌握各类机器学习算法，能灵活应对各类数据处理任务，对新兴算法有较强的学习和复现能力],
  level(6),
  "嵌入式开发",
  [熟练使用C语言进行 8051/STM32/TI 单片机程序设计；能够使用嘉利创EDA、KiCAD绘制原理图、PCB],
  level(6),
  "YOLO",
  [熟悉 YOLOv5/v8 源码，实现图像分类、目标检测、分割及姿态识别；YOLOv11 有初步了解],
  level(5),
  "ROS2",
  [了解ROS2系统，能够使用 ROS2 进行机器人控制程序的设计],
  level(5),
  "Unity",
  [了解 C\# 语言，能够使用 Unity 设计仿真系统，并了解 Unity 与 ROS2 的联调仿真],
  level(4),
  "机器人仿真",
  [熟悉 Mujoco、Gazebo 等仿真平台，能够进行基本的机器人仿真开发],
  level(4),
  "Flask",
  [熟悉 Flask 框架，了解网站开发流程，并具有网站开发经验],
  level(4),
  // "网页设计",
  // [能够使用 HTML、CSS 和 JavaScript 设计静态网页；会使用 Dreamweaver，FrontPage等设计工具],
  // level(4),
  // "CAD",
  // [能够熟练使用 SolidWorks， Blender， AutoCAD 进行 2D/3D 设计； 具备基本 Maya 建模能力，能够进行简单的建模和动画制作],
  // level(4),
  "CAD",
  [能够熟练使用 SolidWorks， Blender， AutoCAD 进行 2D/3D 设计],
  level(4),
  "TensorFlow",
  [基础了解，能实现简单的深度学习模型],
  level(3),
  // "外语",
  // [英语流利，能进行法语、西班牙语、日语、韩语、罗马尼亚语基础交流],
  // level(6)
)

#skills_de_moi
#v(1em)

== 项目经验
#line(length: 100%)

#let exp_item(project, time, back, result, duty: none) = {
  if show_detail_proj == 1 {
    if projblock == 0 {
      [
        #project (#time)
        
        背景：#back
        
        #if show_duty==1 {
          [职责：#duty]
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
          [职责：#duty]
        }

        成果：#result
      ]
    }
  } else {
    if projblock == 0 {
      [
        #project (#time)
        
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
  "全国大学生智能汽车竞赛 智慧医疗组",
  "2024.07",
  "研发能自主完成病房巡检任务的轮式机器人",
  "荣获全国一等奖",
  "优化YOLO目标检测与图像分割模型，完成模型调优、改进及量化，并成功部署于嵌入式平台"
  ),
  ("全国大学生电子设计竞赛",
  "2025.08",
  "制作搭载激光云台的小车，使小车在地图任意位置能够快速控制云台指到靶心，小车在绕圈行驶时保持云台激光指向靶心",
  "荣获全国二等奖",
  "负责靶子识别、坐标矫正，控制云台运动"),

  ("浙江省大学生工程实践与创新能力大赛 智能物流",
  "2024.11-2025.08",
  "研发适应多变场景的物料搬运机器人",
  "荣获浙江省一等奖，全国特等奖",
  "负责任务获取、物料识别、场景建模及路径规划模块的设计与实现"),
  (
  "浙江省大学生机器人竞赛",
  "2025.05",
  "制作水下机器人，完成对水下目标的三维点云密集重建，并针对水下海洋生物的叫声进行录制、识别分类",
  "荣获浙江省一等奖（冠军）",
  "负责音视频传输，复现水下三维重建相关算法和论文、声音识别算法。"
  ),
  (
  "浙江省大学生电子设计竞赛",
  "2024.08",
  "研发智能对弈装置，实现算法对弈与作弊检测",
  "荣获浙江省二等奖",
  "设计装置结构，开发棋盘及棋子视觉识别系统，并实现作弊检测算法与嵌入式部署"
  ),
  (
  "浙江省大学生智能机器人创意竞赛",
  "2024.05",
  "研发智能居家清洁机器人，实现多场景环境下的自动清理",
  "荣获浙江省三等奖",
  "负责机器人结构设计、电气系统设计及原理图、PCB绘制；完成STM32程序、通信及微信小程序开发"
  ),  
  ("海康启智杯机器视觉比赛",
    "2024.05",
    "利用3D深度相机与深度学习技术，实现焊接及产品表面缺陷检测",
    "检测准确率分别达到95%和80%，荣获优秀奖并获发视觉工程师证书",
    "主导核心代码编写，优化检测流程及软件界面设计"
  ),
  (
  "浙江省大学生创新创业比赛",
  "2023 - 2024",
  "针对管道焊接设备短板，研发连续体机器人实现管内焊接",
  "申请专利并荣获浙江省二等奖",
  "主导专利撰写，负责视觉监控与焊接效果评估算法测试，以及机器人3D模型设计"
  ),
  (
  "国家级大学生创新创业项目",
  "2023 - 2025",
  "研发水下机器人，实现海洋建筑裂缝检测与自动修补",
  "项目成功结题，产出论文一篇",
  "负责机器人结构设计及视觉程序开发，实现裂缝检测、辅助水下定位与场景重建"
  ),
  (
  "浙江省大学生物理实验与科技创新竞赛",
  "2024",
  "研发智能奉化芋艿收获机，实现多传感器定位与成熟度判断",
  "荣获浙江省一等奖",
  "负责视觉系统设计，实现芋艿定位、识别及成熟度评估"
  ),
  // (
  // "医美机械手（企业项目）",
  // "2025.01 - 2025.07",
  // "针对特定类型手部残疾的病人，设计制造一款美观实用的机械手，辅助完成日常所需的一些动作",
  // "Doing",
  // "负责相关表面肌电信号采集处理，设计模型算法，在设备上部署算法应用",
  // )
)

#for pro in projects {
  if projblock == 0 {
    [
      + #exp_item(
        pro.at(0),
        pro.at(1),
        pro.at(2),
        pro.at(3),
        duty: pro.at(4),
      )

    ]
  } else {
    [
      #exp_item(
        pro.at(0),
        pro.at(1),
        pro.at(2),
        pro.at(3),
        duty: pro.at(4),
      )
      
    ]
  }
}

#v(1em)

== 所获证书
#line(length: 100%)

+ CET 6级证书
+ 海康机器人认证初级工程师证书

== 自我评价
#line(length: 100%)

本人认真好学、能够不断充实自己的知识，主动吸取新知识。学习能力较强，能快速对新知识了解并上手应用。兴趣广泛，适应力强，喜欢迎接新的挑战。性格友好，和同学保持良好的人际关系。具有较好的团队合作意识和团队管理能力，独立解决问题的能力和较强的执行力。积极乐观，抗压能力强，沟通能力良好。
