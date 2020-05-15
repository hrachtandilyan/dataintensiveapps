Designing Data-Intensive Applications Course Slides
===================================================

Slides for Designing Data-Intensive Applications Course are written in tex.

## Dependencies 
XeLaTex, Pygments, GNU Make


## General Instructions
To generate updated slides for all lessons just run `update_all.sh` script.
Generated slides are put under pdf folder. 
Script also can be modified to batch edit all lessons tex files etc.


`Makefile` in the slides root directory shouldn't be directly used.
It is a generic makefile, and is soft linked into all specific lesson folders.

`EnglishSlides.sty` tex styles file contains all common styling settings.
It is also soft linked into all specific lessons folders and used by each one.


## Working with specific lesson slides

To work with or build  specific lesson slides, go to its specific folder under src dir, like:

`cd src/1.Foundations_Of_Data_Systems/1.Reliable_Scalable_Maintainable_Apps/`

Each lesson specific folder has following structure:

```
.
├── EnglishSlides.sty -> ../../../EnglishSlides.sty
├── Makefile -> ../../../Makefile
├── res
│   ├── ...
│   ├── dataintensiveapps.png
│   └── exampledatasystem.png
└── tex
    └── 1.Reliable_Scalable_Maintainable_Apps.tex
```

Here you can build specific lesson slides by running:

`make slides`

This will generate pdf file and some temporary files and folders.
You can clean up all build results by running:

`make clean`
