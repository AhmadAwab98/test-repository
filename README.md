# Git Assignment

Test Repository for the bash scripting tasks assigned.

## Description

The project contains 8 distinct tasks. 
- task 1 focuses on searching for a specific file within a designated folder
- task 2 is responsible for creating files in a folder, copying created files to another folder, and swapping the names of the two folders.
- task 3 provides the local IP address.
- task 4 modifies a .dotfile, particularly altering the PS1 prompt to customize the command-line interface.
- tasks 5 and 6 are dedicated to creating text boxes, with Task 5 printing a given string within a box made of *, and Task 6 allowing for border customization with a specified character.
- task 7 handles the downloading of images from a website, offering the flexibility to choose names, path and resolutions for the downloaded files.
- task 8 initiates a cronjob for Task 7, automating scheduled image downloads.


## Getting Started

### Language

Git
Shell

### Execution

- Before actually executing any task you have to change the mode of that script to execution:
```
chmod +x script.sh
```

- Task 1 needs file to be searched and folder in which to search, so, to run this script from the command line, you have to run:
```
./task1.sh file.txt folder
```

- To execute task 2, 3 and Task 8
```
./task.sh
```

- Task 4 is a .dotfile which is saved in the home directory and to run it use this command\
```
source .dotfile
```

- Task 5 needs a string to be box printed , so, to run this script from the command line, you have to run:
```
./task5 string
```

- Task 6 needs a string to be box printed and the border of the box, so, to run this script from the command line, you have to run:
```
./task6 -s string -c char 
```

- Task 7 needs path, name and resolution, so, to run this script from the command line, you have to run:
```
./task7 -p path -o filename -r resolution 
```

```
./task7 -p path 
```

- In task 7 you can save the image into the temporary folder.

## Authors

Ahmad Awab
