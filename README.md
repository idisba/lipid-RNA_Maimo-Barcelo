*Documentation of RMD Scripts*

*Plataforma Genòmica i Bioinformàtica-IdISBA*


# 1 Introduction

This document provides an overview and explanation of the functionality and structure of the RMD scripts used in the project. Each section corresponds to a specific RMD file and describes its purpose, main features, and implementation details.
# 2 RMD Scripts Overview

## 2.1 Script: NetRapp.Rmd
### 2.1.1 Purpose

This script implements an interactive Shiny application for visualizing and analyzing network data derived from WGCNA analysis.
### 2.1.2 Key Features

    Interactive Network Visualization:
        Allows users to explore module-specific networks with customizable thresholds.
        Supports Cytoscape file generation for further exploration.
    User Inputs:
        Slider to adjust correlation threshold (cor).
        Module selection using checkbox inputs (variables).
        Enrichment analysis options such as GO and KEGG.
    Outputs:
        Network plots visualizing connections between genes within selected modules.
        Exportable Cytoscape files for advanced visualization.

### 2.1.3 Structure

    Sidebar:
        UI components for user interaction.
    Network Visualization:
        Dynamically generates and displays the network based on user inputs.
    Enrichment Analysis:
        Facilitates pathway and GO analysis of selected modules.

## 2.2 Script: WGCNA_v3.Rmd
### 2.2.1 Purpose

This script focuses on constructing and analyzing weighted gene co-expression networks (Langfelder P, Horvath S (2008). “WGCNA: an R package for weighted correlation network analysis.” BMC Bioinformatics, 559. https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-9-559).

### 2.2.2 Key Features

    Data Preparation:
        Processes input expression data to filter low-expression genes.
    Network Construction:
        Uses soft-thresholding to define adjacency and TOM matrices.
    Module Detection:
        Identifies modules of co-expressed genes using hierarchical clustering.
    Trait Association:
        Relates module eigengenes to external traits.

### 2.2.3 Structure

    Data Input and Cleaning:
        Loads and preprocesses expression data.
    Network Construction:
        Computes adjacency and TOM matrices.
    Module Detection:
        Identifies gene modules and assigns colors.
    Trait Association:
        Correlates module eigengenes with clinical traits.

### 3 How to Use These Scripts

      * Execution:
        Each RMD file can be run independently in RStudio to generate its respective outputs.
        Ensure all required packages (e.g., WGCNA, igraph, shiny) are installed.
      * Interactivity:
        The Shiny application (NetRapp.Rmd) requires an active R session to display interactive elements.
      * Integration:
        The outputs of WGCNA_v3.Rmd can be used as inputs for NetRapp.Rmd.



This document summarizes the purpose and functionality of the RMD scripts. It serves as a guide for understanding how to use and integrate these scripts into the analysis pipeline. For more details, refer to the code comments and inline documentation within each script.
