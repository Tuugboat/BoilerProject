# Boilerplate Project

This project is a good, pre-organized starting point for any project that includes statistical analysis. It is set up to handle both Latex and R Markdown as the final output, and handle analysis in either R or Stata. Python boilerplate is a planned inclusion. Anyone is free to use this project, but do note that the default author is Robert Petit on all files. 

## The Most Important Things
 This project is formatted to work best by opening the top level folder in VS Code. 
 
### **If you want to use R**
Regardless of your editor for R, I *very strongly recommend* running include.R manually *after* opening your R environment and using `here()` (which points automatically to the top level of this project) for all of your file pathing. This will help tremendously in navigating the project, and will allow you to share your project across computers fluidly. If you are opting for RStudio instead of VS Code, I recommend placing the associated .Rproj in /Code. 
  
### **If you wish to use Stata**
I suggest housing the core project files in /Code and manually running `cd $PATH/TO/TOP/LEVEL$` after Stata has opened. This will, again, help with both navigation and sharing.

## Project Structure

* /Data for *any and all data* in the project, regardless of format. Avoid nesting any further if possible since this is the most likely target for batch processing in the future.
* /Writing is where all notebooks and tex files should be saved. If you are intending to use a notebook to write R in place, it should live here, *not in /Code*.
* /Code is the home of any and all stand-alone code. My strong recommendation is to adopt functional programming norms and establish single-use scripts. For most data-driven projects you should only need Clean_, Sim_, FigGen_, TableGen_, and Library_ scripts. If, at any point, you are writing a script that does something else you should take a step back and consider a better path.
* /Articles is where you should store the articles that are relevant to your project. **At minimum** you should have a copy of every article that is referenced in your bibliography in this folder.
* /Figures for any graphics that are generated. These should by almost entirely .png files and useable in any software.
* /Tables for your software-specific table formats (i.e. Stargazer .tex outputs for latex)

Additionally, the .gitignore is already configured to ignore most intermediate files from Latex and R. We opt to not ignore .log files