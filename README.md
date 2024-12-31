# COBOL Data Truncation Bug

This repository demonstrates a common data truncation error in COBOL programs.  The `bug.cob` file shows a program with a potential error due to a `MOVE` statement without explicit size handling.  The `bugSolution.cob` file provides a solution with improved data handling.

## How to Reproduce
1. Compile and run `bug.cob`.  If you input data longer than 100 characters to WS-AREA-1, it may lead to truncation or runtime error. 
2. Compile and run `bugSolution.cob` to see the improved version. 

## Solution
The solution involves using a more robust method of data transfer, ensuring that data isn't truncated during the move operation. More rigorous input validation is another layer of protection that could be added.