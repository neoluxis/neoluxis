#import emoji: star, checkmark
#import "@preview/bone-resume:0.3.0": resume-init, resume-section

#show: resume-init.with(
  author: "Kangfeng Li",
  footer: [Kangfeng Li #h(0.5em) #link(
      "https://me.neolux.eu.org",
    )],
)

#set text(font: ("Noto Serif"), lang: "en", region: "us")

// Whether to show project details. If not, only show titles to save space.
#let show_detail_proj = 1
// Whether to show duties. If not, more space for showcasing results.
#let show_duty = 1
// project block format
#let projblock = 1

#stack(dir: ltr, spacing: 1fr, text(24pt)[*Kangfeng Li*], stack(
  spacing: 0.75em,
  [Phone: +86 195 5816 1054],
  [Email: #link("mailto: li_kangfeng@outlook.com")[li_kangfeng\@outlook.com]],
), stack(
  spacing: 0.75em,
  [GitHub: #link("https://github.com/neoluxis")[github.com/neoluxis]],
  [Website: #link("https://me.neolux.eu.org")[me.neolux.eu.org]],
), move(dy: -2em, box(height: 84pt, width: 60pt, image("shashin.jpg", width: 100%))),
)
#v(-4em)

== Education Background
#line(length: 100%)
China Jiliang University #h(2cm) Major in Automation (Ongoing) #h(1fr) 2022–2026

Core Courses: Machine Learning, Artificial Intelligence, Machine Vision, Embedded Systems, Automatic Control Theory
#v(1em)

== Skills
#line(length: 100%)

#let stars(num) = {
  for _ in range(num) {
    [#emoji.star]
  }
}

#let level(num, desc: none) = {
  if desc == none {
    if num < 4 {
      desc = "Basic"
    } else if num < 6 {
      desc = "Proficient"
    } else if num < 8 {
      desc = "Skilled"
    } else {
      desc = "Expert"
    }
  }
  [(#desc) ]//#stars(num)]
}

#let skills_table = grid(
  columns: (60pt, 1fr, auto),
  rows: auto,
  gutter: 6pt,
  "Python",
  [Extensive project experience; proficient in development, data processing, ML/DL, web development; familiar with common libraries],
  level(7),
  "Linux",
  [Long-term user; experienced in system administration, deployment/debugging of embedded vision and DL apps],
  level(7),
  "Computer Vision",
  [Strong grasp of OpenCV; can efficiently handle image processing tasks],
  level(6),
  "PyTorch",
  [Proficient in building, optimizing deep learning models; familiar with cutting-edge algorithm replication],
  level(6),
  "Machine Learning",
  [Solid knowledge of ML algorithms; capable in diverse data scenarios],
  level(6),
  "Microcontroller",
  [Skilled in 8051/STM32/TI MCU using C; PCB/schematic design with JLCEDA, KiCAD],
  level(6),
  "YOLO",
  [Familiar with YOLOv5/v8 for classification, detection, segmentation, pose estimation; basic YOLOv11 knowledge],
  level(5),
  "ROS2",
  [Familiar with ROS2; can design robot control systems],
  level(5),
  "Unity",
  [Basic C\#; can build simulation systems and integrate with ROS2],
  level(4),
  "Flask",
  [Familiar with Flask; built websites, understands full-stack process],
  level(4),
//  "Web Design",
//  [Can design static pages with HTML/CSS/JS; experienced with Dreamweaver, FrontPage],
//  level(4),
  "CAD",
  [Skilled in SolidWorks, Blender, AutoCAD; basic Maya modeling & animation skills],
  level(4),
  "TensorFlow",
  [Basic knowledge; can implement simple models],
  level(3),
  "Languages",
  [Fluent in English; basic French, Spanish, Japanese, Korean, Romanian],
  level(6)
)

#skills_table
#v(1em)

== Project Experience
#line(length: 100%)

#let project_entry(title, time, background, result, duty: none) = {
  if show_detail_proj == 1 {
    if projblock == 0 {
      [
        #title (#time)

        Background: #background

        #if show_duty==1 {
          [Duties: #duty]
        }

        Result: #result
      ]
    } else {
      resume-section(
        [#title],
        time
      )[
        Background: #background

        #if show_duty==1 {
          [Duties: #duty]
        }

        Result: #result
      ]
    }
  } else {
    if projblock == 0 {
      [
        #title (#time)

        Result: #result
      ]
    } else {
      resume-section(
        [#title],
        time
      )[
        Result: #result
      ]
    }
  }
}

#let projects = (
  (
  "National Intelligent Vehicle Competition – Healthcare",
  "2024.07",
  "Developed a wheeled robot for autonomous hospital inspections",
  "Won National First Prize",
  "Optimized YOLO model for detection and segmentation; tuned and quantized model; embedded deployment"
  ),
  (
  "Zhejiang Engineering Innovation Competition – Logistics",
  "2024.11",
  "Developed a robot for dynamic material handling",
  "Won Zhejiang First Prize, advanced to national round",
  "Designed modules for material recognition, scene modeling, path planning"
  ),
  (
  "Zhejiang University Robotics Competition",
  "2025.05",
  "Built underwater robot for dense 3D reconstruction and marine audio classification",
  "Won Zhejiang First Prize (Champion)",
  "Handled AV streaming, implemented reconstruction and classification algorithms"
  ),
  (
  "Zhejiang Electronic Design Competition",
  "2024.08",
  "Developed intelligent chess device with AI and cheat detection",
  "Won Zhejiang Second Prize",
  "Designed hardware; developed vision system and embedded cheat detection"
  ),
  (
  "Zhejiang Robot Innovation Contest",
  "2024.05",
  "Built smart home cleaning robot for diverse scenarios",
  "Won Zhejiang Third Prize",
  "Handled mechanical and PCB design, STM32 programming, WeChat app development"
  ),
  (
  "Hikvision AI Vision Challenge",
  "2024.05",
  "Used 3D depth camera and DL for defect detection",
  "95% and 80% accuracy; won Excellence Award and Certification",
  "Led core code, improved detection process and UI"
  ),
  (
  "Zhejiang Innovation & Entrepreneurship Competition",
  "2023–2024",
  "Built continuum robot for in-pipe welding",
  "Patent filed, won Zhejiang Second Prize",
  "Led patent writing, tested visual monitoring and weld evaluation, designed 3D models"
  ),
  (
  "National College Innovation Project",
  "2023–2025",
  "Developed underwater robot for crack detection and repair",
  "Project completed, one paper published",
  "Designed robot and vision algorithms for detection, localization, reconstruction"
  ),
  (
  "Zhejiang Physics & Tech Innovation Competition",
  "2024",
  "Designed smart taro harvester using multi-sensor fusion",
  "Won Zhejiang First Prize",
  "Developed visual system for positioning, identification, ripeness evaluation"
  )
)

#for pro in projects {
  project_entry(
    pro.at(0),
    pro.at(1),
    pro.at(2),
    pro.at(3),
    duty: pro.at(4),
  )
}

#v(1em)

== Certificates
#line(length: 100%)

+ CET-6 Certificate (English Proficiency)
+ Hikvision Certified Junior Vision Engineer

== Self-Evaluation
#line(length: 100%)

I am diligent and eager to learn, always expanding my knowledge and proactively seeking growth. With strong learning ability and adaptability, I can quickly understand and apply new technologies. I enjoy challenges, maintain good relationships with peers, and possess solid teamwork and leadership skills. I am capable of independent problem-solving, have strong execution, and communicate effectively under pressure.
