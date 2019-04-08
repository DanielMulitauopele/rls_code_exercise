# RLS Sentence Counter
<img src="https://img.shields.io/badge/ruby%20-v2.4.1-brightgreen.svg" title="ruby-badge">

## Table of Contents

* [Description/Purpose](#descriptionpurpose)
* [Prompt](#prompt)
* [Requirements](#system-requirements)
* [Setup](#setup)
* [Testing](#testing)
* [Implementation](#implementation)
* [Time Complexity](#time-complexity)
* [Dependencies](#dependencies)
* [Contributors](#contributors)

## Description/Purpose

This application was built to demonstrate my proficiency and ability to use Ruby, as well
as my understanding of OOP and DRY principles. As a candidate for the
software development position at Real Life Sciences, I hope this application demonstrates my aptitude for critical thinking, efficiency, and clean code. The prompt for this project is listed below.

## Prompt

Write a simple function that takes in an input file of sentences (single column, one per line) and produces a new file with the ordered frequency counts of these sentences, in any programming language. For instance, a couple example sentences are: "I like dogs" and "I like cats".
Analyze your program and tell us a detailed running time (time complexity) of it i.e. big o notation, based on parameters you define (i.e. N = number of lines in the input file, etc).

## System Requirements

This application requires ruby to be installed to your local
machine:

* [Ruby](https://www.ruby-lang.org/en/)

## Setup

To setup this application locally, take the following steps:

* Clone this repository down into a local directory of your choice.
* Navigate(cd) into rls_code_exercise
* Run bundle
* Run ruby sentence_counter.rb to run the program
* Check the data folder for your newly created CSV file.

## Testing

To test this application locally, take the following steps:

* After setup, run ruby test/sentence_counter_test.rb

Because private methods cannot be tested, I chose to only test the instance of the class, as well as the attributes of the class. I believe that a basic architecture for testing, albeit incomplete, would be sufficient for this exercise.

## Implementation

My first course of action was to check my assumptions. I asked questions regarding the types of files that might be used for this program, and I was given freedom to make the determination for myself. Because the input file was only lines of sentences, I believed that a .txt file would be best suited for the input file. The output file, however, would benefit in a CSV format. I chose to render my results in a CSV file, with headers inserted.

The initial prompt was to write all of this code as a single function/method. However, in order to adhere to Ruby best practices, I felt it would be better written as a series of small, SRP methods within a class. Each method would do one thing, and would make for cleaner, encapsulated code. If the position requires that I write the code in a single method, I can do that as well.

### Time Complexity

The time complexity of the whole process is O(n) in that it directly scales with the size of the sample text file. In the code, you will find comments that track the time complexity of each method, and in general, they all run in O(n) time. Because the program needs to read every line of code in order to count the frequency of a sentence, the fastest possible time it can run in is O(n). A linear time growth is the best that can be expected. 

## Dependencies

**Development**

* [MiniTest](https://github.com/seattlerb/minitest)

## Contributors

* [Daniel Mulitauopele](https://github.com/DanielMulitauopele)
