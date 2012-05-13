CodeaSort
=========

Implementation of sorting algorithms in Lua, for [Codea on the iPad][1]:

- Bucket sort
- Counting sort
- Heap sort
- Insertion sort
- Merge sort
- Quicksort

The source code is adapted to Lua from the pseudocode used in the book
[Introduction to Algorithms, Third Edition][2] by Cormen, Leiserson,
Rivest and Stein.

Installation
------------

Unfortunately Codea does not currently allow for import / export of
projects, so you will have to manually create each one of the files and
paste the contents in your application.

1. Create a `Calculator` project in Codea
2. Create a file for each one in this project, and copy the contents of
   the respective files in this project.
3. Replace the contents of the `Main` file with those of the `Main.lua`
   file included in this project.
4. Hit the play button!

Execution
---------

When executed, this Codea project performs the following tasks:

1. Generates an array of random integers;
2. Sorts subsets of this array using each available algorithm, in this
   order: insertion sort, merge sort, heap sort, quicksort, counting
   sort, bucket sort;
3. Registers the time required for each method and size, and displays
   the results as text on the Codea console.

This is the result of running the program:

    With 100 items ============
    1) 100 items, 0.00 ms
    2) 100 items, 1.25 ms
    3) 100 items, 4.38 ms
    4) 100 items, 0.00 ms
    5) 100 items, 94.50 ms
    6) 100 items, 6.75 ms
    slowest was 5th
    fastest was 1th
    With 500 items ============
    1) 500 items, 44.00 ms
    2) 500 items, 15.38 ms
    3) 500 items, 15.75 ms
    4) 500 items, 0.75 ms
    5) 500 items, 105.62 ms
    6) 500 items, 9.25 ms
    slowest was 5th
    fastest was 4th
    With 1000 items ============
    1) 1000 items, 183.38 ms
    2) 1000 items, 23.62 ms
    3) 1000 items, 35.62 ms
    4) 1000 items, 9.88 ms
    5) 1000 items, 89.25 ms
    6) 1000 items, 25.25 ms
    slowest was 1th
    fastest was 4th
    With 5000 items ============
    1) 5000 items, 4467.88 ms
    2) 5000 items, 155.38 ms
    3) 5000 items, 231.88 ms
    4) 5000 items, 66.12 ms
    5) 5000 items, 115.62 ms
    6) 5000 items, 469.00 ms
    slowest was 1th
    fastest was 4th
    With 10000 items ============
    1) 10000 items, 17916.12 ms
    2) 10000 items, 339.62 ms
    3) 10000 items, 502.25 ms
    4) 10000 items, 141.38 ms
    5) 10000 items, 131.38 ms
    6) 10000 items, 1803.25 ms
    slowest was 1th
    fastest was 5th

License
-------

    Copyright (c) 2012, Adrian Kosmaczewski
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are
    met:

    Redistributions of source code must retain the above copyright notice,
    this list of conditions and the following disclaimer.
    Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.
    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
    IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
    TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
    PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
    HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
    SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
    TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
    PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
    LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
    NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
    SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

[1]:http://twolivesleft.com/Codea/
[2]:http://mitpress.mit.edu/catalog/item/default.asp?ttype=2&tid=11866

