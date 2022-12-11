# Dependencies installation

In this repository you're going to be using two tools

- <a href="https://github.com/s-andrews/FastQC/" target="_blank">FastQC</a>
- <a href="https://github.com/ewels/MultiQC" target="_blank">MultiQC</a>
- <a href="https://www.nextflow.io/" target="_blank">Nextflow</a>

In order to download them you'll have to run an executable bash file that will download the code dependencies for you. To run it you'll have to be located at the installations folder. "installations/", once you're there you will have to give execution permissions to the file "tools.sh" to do this run the following code on your terminal:

In order to run the code you'll have to install nextflow downloading an executable file that you'll find at the official [nextflow website](https://www.nextflow.io/) in the getting started section, make sure that the executable file is at root directory level.

```
user@computer:~$ cd installations/
user@computer:~$ chmod +x tools.sh
user@computer:~$ ./tools.sh

```

The executable will install the following things: 
- FastQC
- MultiQC
- Nextflow
- Sample Data from brain tumors
- Cicero reference genome