## Introduction

These are a set of ruby challenges that are relate to the core concepts we're learning. Some of the questions are really tricky; not every single question needs to be completed. It's all practice!

## Tools

We'll be using a tool called `rspec` to verify that you're solving the challenges correctly.

To install `rspec` run:

```bash 
gem install rspec
```

The challenges are all nested in their own directory. The challenge requirements and where you'll actually write your solution is in `index.rb`. The test file is under `tests.rb`. You can look at this `tests` file but don't edit it.

Read the requirements and then run the tests straight away to see what's failing. 

## Instructions

This will be the process you need to follow for the first question.

1. Change into the directory with the specific challenge

From the command line:

```bash
cd 01-winner-predictor
rspec tests.rb
```

The `rspec` command executes the `tests.rb` file tells you what code needs to be written in order to satisfy the test implementation. The `.rspec` file is just a set of options to make rspec print to terminal in a helpful way.

2. Write the code to solve the test

3. Run the `rspec tests.rb` command again to see if your code passed

4. I find it helpful to just execute the normal ruby file (no rspec) whilst I'm working through a technical challenge

From the command line:

```bash
ruby index.rb
```

5. Have fun 🧠