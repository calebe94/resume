# Calebe94's Resume

This repository provides a highly customizable and professional CV/Resume generator built using LaTeX and the `moderncv` package. It allows you to easily maintain and generate multiple versions of your curriculum vitae in PDF format, including localized versions (e.g., English and Portuguese).

## Features

*   **LaTeX-powered:** Leverages the robust typesetting capabilities of LaTeX for a clean and professional layout.
*   **Multi-language Support:** Easily generate CVs in different languages (currently English and Portuguese) by editing `info.yml` and dedicated `.tex` files.
*   **Customizable Content:** All personal information, sections (summary, education, skills, experience, projects, etc.), and their content can be readily updated.
*   **Multiple CV Versions:** Generate different versions of your CV (e.g., `short`, `full`, `pt`, `en`) tailored for specific applications.
*   **Automated Generation:** A `Makefile` simplifies the PDF generation process.

## Getting Started

To use this CV generator, you need to have a LaTeX distribution installed on your system.

### Prerequisites

*   **LaTeX Distribution:** Install a full LaTeX distribution.
    *   For **macOS**, [MacTeX](https://www.tug.org/mactex/) is recommended.
    *   For **Windows**, [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/) is recommended.
    *   For **Linux**, `texlive-full` or `texlive-most` package (depending on your distribution) is recommended.

    Ensure that `pdflatex` is available in your system's PATH after installation.

### Installation

1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/calebe94/resume.git
    cd resume
    ```

## Customization

The CV content and personal information are primarily managed in the following files:

*   `info.yml`: This YAML file stores your personal details (name, email, social links) and localized summaries for different language versions.
*   `cv.tex`: This is the main LaTeX template that defines the structure and sections of your CV. You can duplicate this file (e.g., `curriculum-full.tex`, `curriculum-pt.tex`, `curriculum.tex`) and customize the content within each section (`\section`, `\cventry`, `\cvitem`).

To customize your CV:

1.  **Edit Personal Information:** Update your name, contact details, and social links in `info.yml`.
2.  **Update Summaries:** Modify the `summary` field under the `en:` and `pt:` sections in `info.yml` for English and Portuguese versions, respectively.
3.  **Adjust CV Sections:** Open `cv.tex` (or the specific `curriculum-*.tex` file you are working on) and modify the content within the `\section`, `\cventry`, and `\cvitem` commands to reflect your education, work experience, skills, projects, etc.
    *   `\name{First}{Last}`
    *   `\title{Your Title}`
    *   `\email{your.email@example.com}`
    *   `\phone[mobile]{+XX (YY) ZZZZZ-ZZZZ}`
    *   `\social[linkedin]{your_linkedin_id}`
    *   `\social[github]{your_github_id}`
    *   `\extrainfo{\faRss\href{https://yourblog.com/}{yourblog.com}}`
    *   `\section{Section Title}`
    *   `\cventry{Years}{Degree/Role}{Institution/Company}{Location}{Grade/Description}{Additional Info}`
    *   `\cvitem{Category}{Item Description}`

## Usage

After customizing your `.tex` files, you can generate the PDF documents using the provided `Makefile`.

### Generating PDFs

Navigate to the root directory of the cloned repository in your terminal and run the desired `make` command:

*   **Generate English CV (`curriculum.pdf`):**
    ```bash
    make en
    ```

*   **Generate Portuguese CV (`curriculum-pt.pdf`):**
    ```bash
    make pt
    ```

*   **Generate Full CV (`curriculum-full.pdf`):**
    ```bash
    make full
    ```

*   **Generate All CVs (English, Portuguese, and Full):**
    ```bash
    make pdf
    # or
    make all
    ```

The generated PDF files will be located in the root directory of the project (e.g., `curriculum.pdf`, `curriculum-pt.pdf`, `curriculum-full.pdf`).

## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.
