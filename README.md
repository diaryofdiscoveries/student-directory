# Student Directory #

The student directory script allows you to manage the list of students enrolled at Villains Academy.


## How to use :star2:

Providing a .csv file is optional

```shell
ruby directory.rb file.csv
```


# Exercises - Step 8 :point_down:

1.  We're using the each() method to iterate over an array of students. How can you modify the program to print a number before the name of each student, e.g. "1. Dr. Hannibal Lecter"?
    [Commit cae5587](https://github.com/diaryofdiscoveries/student-directory/commit/cae55873ab047632fc524ec0e387cc47762bc266) 

2.  Modify your program to only print the students whose name begins with a specific letter.
    [Commit 096e11a](https://github.com/diaryofdiscoveries/student-directory/commit/096e11a7a36d07e6cae1fb7df60f0605d5477fb8)

3.  Modify your program to only print the students whose name is shorter than 12 characters. 
    [Commit 028d1d8](https://github.com/diaryofdiscoveries/student-directory/commit/028d1d8c27f1bbe00a18c8249a2b3cdf9216a572)

4.  Rewrite the each() method that prints all students using while or until control flow methods.
    [Commit 4700b95](https://github.com/diaryofdiscoveries/student-directory/commit/4700b95161e5fdaf7a74d8e2b1a2f12d64d85fd4)

5.  Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc.
    [Commit 2c425c5](https://github.com/diaryofdiscoveries/student-directory/commit/2c425c5878c38478d718f5f1253da8acf0bd96f7)

6.  Research how the method center() of the String class works. Use it in your code to make the output beautifully aligned.
    [Commit e8cad70](https://github.com/diaryofdiscoveries/student-directory/commit/e8cad707656ffb099fe696088dde5040e19fe077)

7.  In the input_students method the cohort value is hard-coded. How can you ask for both the name and the cohort? What if one of the values is empty? Can you supply a default value? The input will be given to you as a string? How will you convert it to a symbol? What if the user makes a typo?
    [Commit 6afd93e](https://github.com/diaryofdiscoveries/student-directory/commit/6afd93e4658d1288df7a56f2477ddbcfc134a30e)

8.  Once you complete the previous exercise, change the way the users are displayed: print them grouped by cohorts. To do this, you'll need to get a list of all existing cohorts (the  map() method may be useful but it's not the only option), iterate over it and only print the students from that cohort.
    [Commit d70c556](https://github.com/diaryofdiscoveries/student-directory/commit/d70c5562ec8203d586b49d35e71cc4f56f561ff9)

9.  Right now if we have only one student, the user will see a message "Now we have 1 students", whereas it should be "Now we have 1 student". How can you fix it so that it used singular form when appropriate and plural form otherwise?
    [Commit 07f11a4](https://github.com/diaryofdiscoveries/student-directory/commit/07f11a4ef4b9786952324f1a8d01fd5b320f7001)

10. We've been using the chomp() method to get rid of the last return character. Find another method among those provided by the String class that could be used for the same purpose (although it will require passing some arguments).
    [Commit f119a25](https://github.com/diaryofdiscoveries/student-directory/commit/f119a25a2a5e5e0b0d2b029f5f1302ce02396332)
    
11. Once you have completed the "Asking for user input" section, open [this file](https://raw.githubusercontent.com/anitacanita/student-directory/master/typos.rb). It's Ruby code but it has some typos. Copy it to a local file and open it in Atom without syntax highlighting. To do this, select "Plain Text" in the lower right corner of the window. Now, find all typos in that file and correct them. Use your experience, online documentation, etc. to find all mistakes. Run the script in the terminal from time to time to make sure it works as it should. Google the errors Ruby will give you, think about what they could mean, try different things but don't look the answer up.
    [Commit 974021d](https://github.com/diaryofdiscoveries/student-directory/commit/974021d9ddd2be3da9f93d9151464b3e0dc1a0a3)

12. What happens if the user doesn't enter any students? It will try to print an empty list. How can you use an if statement to only print the list if there is at least one student in there?
    [Commit 6d361ff](https://github.com/diaryofdiscoveries/student-directory/commit/6d361ff9d0faf26754545a9aa53ec74c14344fe8)    


# Exercises - Step 14 :point_down:

1.  After we added the code to load the students from file, we ended up with adding the students to @students in two places. The lines in load_ students() and  input_students() are almost the same. This violates the DRY (Don't Repeat Yourself) principle. How can you extract them into a method to fix this problem?
    [Commit b33d87b](https://github.com/diaryofdiscoveries/student-directory/commit/b33d87bcec7f6078f3f8e6b0fcfec836faf4c1ca)
    
2.  How could you make the program load students.csv by default if no file is given on startup? Which methods would you need to change?


3.  Continue refactoring the code. Which method is a bit too long? What method names are not clear enough? Anything else you'd change to make your code look more elegant? Why?


4.  Right now, when the user choses an option from our menu, there's no way of them knowing if the action was successful. Can you fix this and implement feedback messages for the user?


5.  The filename we use to save and load data (menu items 3 and 4) is hardcoded. Make the script more flexible by asking for the filename if the user chooses these menu items.


6.  We are opening and closing the files manually. Read the documentation of the File class to find out how to use a code block (do...end) to access a file, so that we didn't have to close it explicitly (it will be closed automatically when the block finishes). Refactor the code to use a code block.


7.  We are de-facto using CSV format to store data. However, Ruby includes [a library to work with the CSV files](http://ruby-doc.org/stdlib-2.0.0/libdoc/csv/rdoc/CSV.html) that we could use instead of working directly with the files. Refactor the code to use this library.


8.  Write a short program that reads its own source code (search StackOverflow to find out how to get the name of the currently executed file) and prints it on the screen.

