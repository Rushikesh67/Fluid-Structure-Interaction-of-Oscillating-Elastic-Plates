
# Fluid Structure Interaction of Oscillating Elastic Plates



##  Case architecture
![image](https://github.com/Rushikesh67/Fluid-Structure-Interaction-of-Oscillating-Elastic-Plates/assets/81912881/25a7bcb1-c692-4c42-8465-6bc5326436c9)

The provided image illustrates the architecture of a typical OpenFOAM directory. Within the solids4foam directory, a similar structure is employed; however, the folders 0 (initial condition directory), constant, and system are divided into distinct solid and fluid sections. The fluid section mirrors the structure depicted above, while the solid section follows a similar layout with minor variations. Within the 0 directory, the P and U files are substituted with D and DD files, representing displacement and derivatives of displacement, respectively. The constant folder in the solid section closely resembles the structure found in the fluid section.

### 0 Directory (Initial Condition Directory):
In the fluid directory, two key subdirectories are present: P (Pressure) and U (velocity). These subdirectories allow for the specification of initial conditions for pressure and velocity on boundary walls as well as the interface wall. Within the solid directory, corresponding subdirectories, namely D (displacement) and DD (derivative of displacement), exist. These subdirectories enable the assignment of initial conditions to the walls of the solid plate.

### Constant Directory:
Contained within this directory are Polymesh folders for both the solid domain and fluid domain, along with files pertaining to physical properties. For further information on Polymesh folders and meshing within OpenFOAM, refer to this resource: OpenFOAM Mesh Generation and Conversion Guide. Within the solid folder, a solid Polymesh folder is present alongside a mechanicalProperties file. This file facilitates the definition of mechanical properties and the solid material model for the solid domain. Similarly, the fluid folder encompasses a Fluid polymesh folder, a fluidProperties folder for specifying fluid models (e.g., icofoam for incompressible fluids), and a transportProperties folder to define fluid physical properties.

### System Folder:
Contained within the system folder are the controlDict file, decomposeParDict file, as well as separate solid and fluid folders. The controlDict file holds parameters such as the time step, chosen solver (e.g., solids4Foam solver), simulation start and end times, and write interval. The decomposeParDict file defines the number of subdomains into which both the fluid and solid domains are partitioned. The count of subdomains aligns with the number of processors employed for parallel computation. Both the solid and fluid folders encompass their own individual decomposeParDict files, permitting the specification of decomposition methods (e.g., the use of the scotch method, as seen in this instance). For a more comprehensive understanding of decomposition methods, visit this reference: OpenFOAM User Guide - Running Applications in Parallel. The solid and fluid folders also include fvSolution files, which serve to define the required convergence tolerance level for the simulation.
