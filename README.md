# DIME Shiny Training Session 🧠💻  
<img src="logos/QuartoDIMETheme.png" align="right" height="160" />

Welcome to the training repository for the **DIME Shiny training session**. This repository contains materials used during a live session designed to introduce participants to building and sharing interactive Shiny applications using the **[DIME Quarto Theme](https://dime-worldbank.github.io/quarto-dime-theme/)**.

This session was built using [Quarto](https://quarto.org/) — a cross-language publishing framework that allows researchers to easily create slides, reports, websites, and dashboards from R or Python. The DIME theme helps streamline your presentation format so you can focus on content, not styling.

---

## 📂 Repository Contents

### 1. `shiny_session.qmd`  
The slide deck used during the live session — built with Quarto Reveal.js using the DIME theme. You can run this locally with Quarto, see the slides [here](https://ce-wb-shiny.netlify.app/) or view it live during the session.

### 2. `example_single/`  
An example of a **single-file Shiny app**, where UI and server logic are combined in one file. Great for simple apps.

### 3. `example_multiple/`  
An example of a **multiple-file Shiny app**, separating UI and server logic. This is closer to best practices for larger, modular apps.  
Includes a final working version for reference.

---

## 👩‍🏫 How to Use This Repo

This repository was developed for use in a **live training session**, but participants (and future users) are encouraged to explore the materials at their own pace.

You can:
- Follow along with the `shiny_session.qmd` slides
- Run the single-file and multiple-file Shiny apps
- Use the examples as templates for your own Shiny projects

---

## 🔧 Requirements

- [R](https://cran.r-project.org/)
- [RStudio](https://posit.co/products/open-source/rstudio/)
- [Quarto](https://quarto.org/)
- `shiny`, `ggplot2`, and other core tidyverse packages

---