# GSOC Organizations Visualization (animint2) [EASY TASK]

This visualization is inspired by exercises from the animint2 manual and demonstrates interactive filtering using `clickSelects` and `showSelected`.

## Live Demo
https://AasmaGupta.github.io/gsoc-viz-deploy

## Description
This interactive visualization shows programming language distribution across GSoC organizations.

- clickSelects: Clicking a language filters the data
- showSelected: Only selected data is displayed

## Error Encountered

When loading `animint2` before `ggplot2`:


`library(animint2)`
`library(ggplot2)`

The following warning occurs:
Ignoring unknown parameters: `clickSelects` and `showSelected`

Therefore, correct usage:
`library(ggplot2)`
`library(animint2)`

<img width="946" height="628" alt="image" src="https://github.com/user-attachments/assets/ff9c15f6-e6a8-4344-be3e-bd4abfc8ce51" />
<img width="941" height="741" alt="image" src="https://github.com/user-attachments/assets/d10f15f1-fb72-40f5-82b8-e8b024966b2b" />
<img width="947" height="738" alt="image" src="https://github.com/user-attachments/assets/a523f271-39cc-4e12-bf75-94d8eae606e8" />
