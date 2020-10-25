---
author-meta:
- Cyrillus Tan
- Robert Theisen
- Falk Nimmerjahn
- Aaron S. Meyer
date-meta: '2020-10-25'
header-includes: "<!--\nManubot generated metadata rendered from header-includes-template.html.\nSuggest improvements at https://github.com/manubot/manubot/blob/master/manubot/process/header-includes-template.html\n-->\n<meta name=\"dc.format\" content=\"text/html\" />\n<meta name=\"dc.title\" content=\"An immune complex binding model predicts effector cell response across diverse disease models\" />\n<meta name=\"citation_title\" content=\"An immune complex binding model predicts effector cell response across diverse disease models\" />\n<meta property=\"og:title\" content=\"An immune complex binding model predicts effector cell response across diverse disease models\" />\n<meta property=\"twitter:title\" content=\"An immune complex binding model predicts effector cell response across diverse disease models\" />\n<meta name=\"dc.date\" content=\"2020-10-25\" />\n<meta name=\"citation_publication_date\" content=\"2020-10-25\" />\n<meta name=\"dc.language\" content=\"en-US\" />\n<meta name=\"citation_language\" content=\"en-US\" />\n<meta name=\"dc.relation.ispartof\" content=\"Manubot\" />\n<meta name=\"dc.publisher\" content=\"Manubot\" />\n<meta name=\"citation_journal_title\" content=\"Manubot\" />\n<meta name=\"citation_technical_report_institution\" content=\"Manubot\" />\n<meta name=\"citation_author\" content=\"Cyrillus Tan\" />\n<meta name=\"citation_author_institution\" content=\"Department of Bioinformatics, University of California, Los Angeles\" />\n<meta name=\"citation_author\" content=\"Robert Theisen\" />\n<meta name=\"citation_author_institution\" content=\"Department of Bioengineering, University of California, Los Angeles\" />\n<meta name=\"citation_author\" content=\"Falk Nimmerjahn\" />\n<meta name=\"citation_author_institution\" content=\"Friedrich-Alexander-University of Erlangen-N\xFCrnberg\" />\n<meta name=\"citation_author\" content=\"Aaron S. Meyer\" />\n<meta name=\"citation_author_institution\" content=\"Department of Bioengineering, University of California, Los Angeles\" />\n<meta name=\"citation_author_institution\" content=\"Department of Bioinformatics, University of California, Los Angeles\" />\n<meta name=\"citation_author_institution\" content=\"Jonsson Comprehensive Cancer Center, University of California, Los Angeles\" />\n<meta name=\"citation_author_institution\" content=\"Eli and Edythe Broad Center of Regenerative Medicine and Stem Cell Research, University of California, Los Angeles\" />\n<meta name=\"citation_author_orcid\" content=\"0000-0003-4513-1840\" />\n<meta name=\"twitter:creator\" content=\"@aarmey\" />\n<link rel=\"canonical\" href=\"https://meyer-lab.github.io/FcTranslation.jl/\" />\n<meta property=\"og:url\" content=\"https://meyer-lab.github.io/FcTranslation.jl/\" />\n<meta property=\"twitter:url\" content=\"https://meyer-lab.github.io/FcTranslation.jl/\" />\n<meta name=\"citation_fulltext_html_url\" content=\"https://meyer-lab.github.io/FcTranslation.jl/\" />\n<meta name=\"citation_pdf_url\" content=\"https://meyer-lab.github.io/FcTranslation.jl/manuscript.pdf\" />\n<link rel=\"alternate\" type=\"application/pdf\" href=\"https://meyer-lab.github.io/FcTranslation.jl/manuscript.pdf\" />\n<link rel=\"alternate\" type=\"text/html\" href=\"https://meyer-lab.github.io/FcTranslation.jl/v/8bee86e44333a423d1cecb20f534b78a946f9f03/\" />\n<meta name=\"manubot_html_url_versioned\" content=\"https://meyer-lab.github.io/FcTranslation.jl/v/8bee86e44333a423d1cecb20f534b78a946f9f03/\" />\n<meta name=\"manubot_pdf_url_versioned\" content=\"https://meyer-lab.github.io/FcTranslation.jl/v/8bee86e44333a423d1cecb20f534b78a946f9f03/manuscript.pdf\" />\n<meta property=\"og:type\" content=\"article\" />\n<meta property=\"twitter:card\" content=\"summary_large_image\" />\n<link rel=\"icon\" type=\"image/png\" sizes=\"192x192\" href=\"https://manubot.org/favicon-192x192.png\" />\n<link rel=\"mask-icon\" href=\"https://manubot.org/safari-pinned-tab.svg\" color=\"#ad1457\" />\n<meta name=\"theme-color\" content=\"#ad1457\" />\n<!-- end Manubot generated metadata -->"
keywords:
- "Fc\u03B3R receptors"
- immunology
- antibodies
- effector function
lang: en-US
title: An immune complex binding model predicts effector cell response across diverse disease models
...



<small><em>
This manuscript
was automatically generated on October 25, 2020.
</em></small>

## Authors


+ **Cyrillus Tan**<br>
    · Github
    [cyrillustan](https://github.com/cyrillustan)<br>
  <small>
     Department of Bioinformatics, University of California, Los Angeles
  </small>

+ **Robert Theisen**<br><br>
  <small>
     Department of Bioengineering, University of California, Los Angeles
  </small>

+ **Falk Nimmerjahn**<br><br>
  <small>
     Friedrich-Alexander-University of Erlangen-Nürnberg
  </small>

+ **Aaron S. Meyer**<br>
    ORCID 
    [0000-0003-4513-1840](https://orcid.org/0000-0003-4513-1840)
    · Github
    [aarmey](https://github.com/aarmey)
    · twitter
    [aarmey](https://twitter.com/aarmey)<br>
  <small>
     Department of Bioengineering, University of California, Los Angeles; Department of Bioinformatics, University of California, Los Angeles; Jonsson Comprehensive Cancer Center, University of California, Los Angeles; Eli and Edythe Broad Center of Regenerative Medicine and Stem Cell Research, University of California, Los Angeles
  </small>



## Abstract {.page_break_before}

Antibodies are crucial and central regulators of the immune response. Those of the IgG isotype interact with Fc gamma receptors on effector cells. The effector response of IgGs encompasses multiple cell types (e.g., macrophages, monocytes, etc.) and multiple processes (e.g., antigen presentation, cytokine response, phagocytosis, etc.). An individual IgG can be either pro- or anti-inflammatory depending upon its Fc domain composition and the context. IgGs are particularly versatile agents for therapeutic treatment due to their immunotherapeutic effects as well as those of direct antigen binding and opsonization. Indeed, IgG molecules comprise a broad range of approved therapies, many of which are known to rely in part on effector cell response. At the same time, the multiplicity throughout—of constant region composition, Fc gamma receptors, cell populations, and antigen binding in combination—makes precisely understanding, measuring, and manipulating effector function a yet-elusive goal.

## Summary points

- A
- An FcγR binding model predicts effector-elicited cell killing across multiple disease models.
- Model comparison identifies differences in essential effector cell populations.
- D


## Introduction

Here is where the introduction goes.


## Results

### A multivalent binding model quantifies potential for synergy in immune complex binding

![**A multivalent binding model quantifies potential for synergy in immune complex binding.** A) Schematic of the multivalent binding model. B) Schematic of how synergy or antagonism is calculated from binding predictions. C) Example of predicted synergy in IC. D) Example of predicted synergy in cMO activity. E) Grid of calculated synergy quantities for all pairs of IgG with murine cMO. F) Calculated synergy values with changes in IC concentration. Each point represents an individual IgG pair. Receptor expression assumed to be that measured for murine cMO. G) Calculated synergy values with variation in IC valency. Conditions match those used in (F). H) Calculated synergy values with proportional variation in receptor expression. Conditions match those used in (F).](./output/figureB1.svg "Figure 1"){#fig:bindingS width="100%"}

### Synergy in effector response need not arise through synergy in binding

![**ITP regression.** A) XXX. B) & E) Quantified platelet depletion in a murine ITP model with matched conditions of FcγR knockout and Fc domain composition; each schematic uses an exponential or gompertz survival mode respectively. The R^2 values are determined through directly predicting the depletion (devar), and predicting the depletion through cross-validation (cevar). C) & F) Quantified cell activities with each survival mode. D) & G) Target cell depletion cleared by cell type with each survival mode. Different IgG subclasses induced target cell depletion to varying extents.](./output/figureB2.svg "Figure 2"){#fig:ITP width="100%"}

### IC binding predicts effector-elicited platelet, CD20, and melanoma cell depletion

![**Cancer regression.** IC binding predicts effector-elicited platelet, CD20, and melanoma cell depletion. A) Schematic of earlier IgG subclass experiments (top) and our approach (bottom). B) & E) Quantified target cell depletion in matched conditions of FcγR knockout and Fc domain composition; each schematic uses an exponential or gompertz survival mode respectively. The R^2 values are determined through directly predicting the depletion (devar), and predicting the depletion through cross-validation (cevar). C) & F) Quantified cell activities with each survival mode. D) & G) Target cell depletion cleared by cell type with each survival mode. Different IgG subclasses induced target cell depletion to varying extents.](./output/figureB3.svg "Figure 3"){#fig:fig3 width="100%"}

### Differences in cell population model dependencies

![**Anti CD20 regression.** A) XXX. B) & E) Quantified target cell depletion in bone marrow through an anti-CD20 model in matched conditions of FcγR knockout and Fc domain composition; each schematic uses an exponential or gompertz survival mode respectively. The R^2 values are determined through directly predicting the depletion (devar), and predicting the depletion through cross-validation (cevar). C) & F) Quantified cell activities with each survival mode in bone marrow D) & G) Target cell depletion cleared by cell type with each survival mode in bone marrow. Different IgG subclasses induced target cell depletion to varying extents. H) & K) Quantified target cell depletion in blood through an anti-CD20 model in matched conditions of FcγR knockout and Fc domain composition. Conditions match those in (B) & (E). I) & L) Quantified cell activities with each survival mode in blood. C1q is also included in the activity plot. J) & M) Target cell depletion cleared by cell type with each survival mode in blood. Different IgG subclasses induced target cell depletion to varying extents.](./output/figureB4.svg "Figure 4"){#fig:fig4 width="100%"}

### HIV model

![**HIV regression.** A) XXX. B) & E) Quantified target viral depletion through an HIV model in matched conditions of FcγR knockout and Fc domain composition; each schematic uses an exponential or gompertz survival mode respectively. The R^2 values are determined through directly predicting the depletion (devar), and predicting the depletion through cross-validation (cevar). C) & F) Quantified cell activities with each survival mode. D) & G) Target viral depletion cleared by cell type with each survival mode. Different IgG subclasses induced target viral depletion to varying extents.](./output/figureB5.svg "Figure 5"){#fig:fig5 width="100%"}




## Discussion

Discuss...


## Methods

### Data and Software Availability

All analysis was implemented in Julia, and can be found at <https://github.com/meyer-lab/FcgR.jl>.

### Generalized multi-ligand, multi-receptor multivalent binding model

To model polyclonal antibody immune complexes (ICs), we extended our previous binding model to account for ICs of mixed IgG composition [@DkS7Fd7v].

We define $N_L$ as the number of distinct monomer Fcs, $N_R$ the number of FcRs, and the association constant of monovalent Fc-FcR binding between Fc $i$ and FcR $j$ as $K_{a,ij}$. Multivalent binding interactions after the initial interaction have an association constant of $K_x^* K_{a,ij}$, proportional to their corresponding monovalent affinity. The concentration of complexes is $L_0$, and the complexes consist of random ligand monomer assortments accoring to their relative proportion. The proportion of ligand $i$ in all monomers is $C_i$. By this setup, we know $\sum_{i=1}^{N_L} C_i = 1$. $R_{\mathrm{tot},i}$ is the total number of receptor $i$ expressed on the cell surface, and $R_{\mathrm{eq},i}$ the number of unbound receptors $i$ on a cell at the equilibrium state during the ligand complex-receptor interaction.

The binding configuration at the equilibrium state between an individual complex and a cell expressing various receptors can be described as a vector $\mathbf{q} = (q_{1,0}, q_{1,1}, ..., q_{1,N_R}, q_{2,0},..., q_{2,N_R},q_{3,0},..., q_{N_L, N_R})$ of length $N_L(N_R+1)$, where $q_{i,j}$ is the number of ligand $i$ bound to receptor $j$, and $q_{i,0}$ is the number of unbound ligand $i$ on that complex in this configuration. The sum of elements in $\mathbf{q}$ is equal to $f$ , the effective avidity. For all $i$ in $\{1,2,..., N_L\}$, let $φ_{i,j} = R_{\mathrm{eq},j} K_{a,ij} K_x^* C_i$ when $j$ is in $\{1,2,...,N_R\}$, and $φ_{i,0} = C_i$. The relative amount of complexes in the configuration described by $\mathbf{q}$ at equilibrium is


$$v_{\mathbf{q},eq} = \binom{f}{\mathbf{q}} \frac{L_0}{K_x^* } \prod_{i=1\\ j=0}^{i=N_L\\ j=N_R}{{φ_{ij}}^{q_{ij}}},$$


with $\binom{f}{\mathbf{q}}$ being the multinomial coefficient. Then the total relative amount of bound receptor type $n$ at equilibrium is


$$ R_{\mathrm{bound},n} = \frac{L_0 f}{K_x^* } \sum_{m=0}^{N_L}φ_{mn} \left(\sum_{i=1\\ j=0}^{i=N_L\\ j=N_R}{{φ_{ij}}^{q_{ij}}}\right)^{f-1} .$$


By conservation of mass, we know that $R_{\mathrm{tot},n} = R_{\mathrm{eq},n} + R_{\mathrm{bound},n}$ for each receptor type $n$, while $R_{\mathrm{bound},n}$ is a function of $R_{\mathrm{eq},n}$. Therefore, each $R_{\mathrm{eq},n}$ can be solved numerically from its $R_{\mathrm{tot},n}$ measured experimentally. Similarly, the total relative amount of complexes bind to at least one receptor on the cell is


$$ L_{\mathrm{bound}} = \frac{L_0}{K_x^* } \left [\left(\sum_{i=1\\ j=0}^{i=N_L\\ j=N_R}{{φ_{ij}}^{q_{ij}}}\right)^f -1 \right] .$$


FcRs are activated through crosslinking. The amount of each kind of receptor in a multimerized complex can be calculated as


$$R_{\mathrm{multi},n} = \frac{L_0 f}{K_x^* } \sum_{m=0}^{N_L}φ_{mn} \left[\left(\sum_{i=1\\ j=0}^{i=N_L\\ j=N_R}{{φ_{ij}}^{q_{ij}}}\right)^{f-1}-1 \right] .$$


### Translation model


## Acknowledgements

This work was supported by NIH U01-AI-148119 to A.S.M. and F.N. ...

## Author contributions statement

...


## Supplement {.page_break_before}

Add supplemental figures.

## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
