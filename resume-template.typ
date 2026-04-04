#import emoji: checkmark, star
#import "@preview/bone-resume:0.3.0": resume-init, resume-section

#let show_detail_proj = 1
#let show_duty = 1
#let projblock = 0
#let resume_theme = resume-init.with(
  author: "李康峰",
)


#let resume_header(direction_label) = [
  #stack(
    dir: ltr,
    spacing: 1fr,
    text(24pt)[*李康峰*],
    stack(
      spacing: 0.75em,
      [电话: +86 195 5816 1054],
      [邮箱: #link("mailto: li_kangfeng@outlook.com")[li_kangfeng\@outlook.com]],
    ),
    stack(
      spacing: 0.75em,
      [GitHub: #link("https://github.com/neoluxis")[github.com/neoluxis]],
      [个人主页: #link("https://me.neolux.eu.org")[me.neolux.eu.org]],
      [求职方向: #direction_label],
    ),
    move(dy: -2em, box(height: 84pt, width: 60pt, image("shashin.jpg", width: 100%))),
  )
  #v(-4em)
]

#let section_title(title) = [
  == #title
  #line(length: 100%)
]

#let skill_entry(name, desc, highlight: false) = (
  if highlight { text(weight: "bold")[#name] } else { name },
  desc,
)

#let project_entry(project, time, back, result, duty, highlight) = (
  project,
  time,
  back,
  result,
  duty,
  highlight,
)

#let exp_item(project, time, back, result, duty: none, highlight: false) = {
  let project_title = if highlight {
    text(weight: "bold")[#project]
  } else {
    project
  }
  if show_detail_proj == 1 {
    if projblock == 0 {
      [
        #project_title #h(1fr) #time

        背景：#back

        #if show_duty == 1 {
          [职责：#duty]
        }

        成果：#result
      ]
    } else {
      resume-section(
        [#project_title],
        time,
      )[
        背景：#back

        #if show_duty == 1 {
          [职责：#duty]
        }

        成果：#result
      ]
    }
  } else {
    [
      #project (#time)

      成果：#result
    ]
  }
}

#let render_projects(projects) = [
  #for pro in projects {
    [
      + #exp_item(
          pro.at(0),
          pro.at(1),
          pro.at(2),
          pro.at(3),
          duty: pro.at(4),
          highlight: pro.at(5, default: false),
        )

    ]
  }
]

#let render_skills(skills) = [
  #grid(
    columns: (72pt, 1fr),
    rows: auto,
    gutter: 6pt,
    row-gutter: 0.65em,
    ..skills,
  )
]

#let render_awards(awards) = [
  #list(
    indent: 1em,
    ..awards,
  )
]

#let render_resume(
  direction_label,
  target_roles,
  projects,
  skills,
  awards,
  review,
) = [
  #resume_header(direction_label)

  #section_title([教育背景])
  中国计量大学 #h(2cm) 自动化专业（在读） #h(1fr) 2022-2026\
  主修课程：机器学习、人工智能、机器视觉、嵌入式系统、自动控制理论
  #v(1em)

  #section_title([求职方向])
  #target_roles
  #v(1em)

  #section_title([项目经历])
  #render_projects(projects)
  #v(1em)

  #section_title([核心技能])
  #render_skills(skills)
  #v(1em)

  #section_title([所获证书和奖励])
  #render_awards(awards)
  #v(1em)

  #section_title([个人评价])
  #review
]
