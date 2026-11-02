#let cv = yaml("cv_data.yaml")
#let target = sys.inputs.at("target", default: "all")

#show heading: set text(fill: rgb("#1a365d"))

= Academic Curriculum Vitae

== Publications
#for pub in cv.publications {
  // Check if item matches the selected tag or if target is set to "all"
  if target == "all" or pub.tags.contains(target) [
    - *#pub.title* -- #pub.venue (#str(pub.year))
  ]
}

== Teaching Experience
#for course in cv.teaching {
  if target == "all" or course.tags.contains(target) [
    - *#course.course* (#course.role, #course.term)
  ]
}