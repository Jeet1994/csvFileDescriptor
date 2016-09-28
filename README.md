##An R package for describing a given csv file.

---

#####*This package aims at solving the problems people face with the preliminary data study on R.*

---

**What does the package do?**
This package gives the head, tail, dimension and summary of the dataset; it can also generate a report in text format.

---

**How to install it?**

1. Install devtools.

2. Install the package from github.

3. Change the working directory to the one in which you have the dataset in **CSV** format.

4. Run `CSVDescriptor("filename.csv")`


---

**Steps:**

1. To install devtools: `install.packages("devtools")`

2. Load library with : `library(devtools)`

3. To get package: `install_github("Jeet1994/csvFileDescriptor")`

4. Load package : `library(csvFileDescriptor)`

5. Restart Rstudio after the installation is over.

6. Set the working directory to the folder which contains the **dataset.csv**
file : `setwd("path/to/file/dataset.csv")`

7. Test the package : `CSVDescriptor("dataset.csv")` this will describe the function in the Rstudio console.

8. To store the data report in a text file : `GenTxtReport("dataset.csv")` this will generate a text file that will contain all the information about the dataset. 
This text file will be stored in the same directory as the **dataset.csv** file and will be named as **Report.txt**. 

9. To get a PDF report do : `GenPdfReport(""). The pdf report will be stored in same directory as the **Report.txt**,
and will be named as **Report.pdf**.

---

**Dependancies:**

1. roxygen2.

2. devtools.

3. pandoc. 

4. rmarkdown.

---

**Screenshots**
If you search for the package in the *Packages* pane in RStudio, you must see this
![ScreenShot](http://i.imgur.com/8f2QJUy.png )

---

**Author/Creator:**
Pragyaditya Das.

This is my **individual** work.


###NOTE:

1. The package was made and tested on Windows 8 - 64 bit system.

2. There was a lot of help from the internet, particularly Stackoverflow and rbloggers.

---

Licenses:

####MIT LICENSE
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

####BEERWARE LICENSE
Pragyaditya Das wrote this code. As long as you retain this notice you can do
whatever you want with this stuff. If we meet some day, and you think this
stuff is worth it, you can buy me a beer in return.

