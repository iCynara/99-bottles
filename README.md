# 99 Bottles

## Learning notes from Sandi Metz's 99 bottle book

Thing I have learned so far: 

### Value/Cost

Value: Ask domain questions 
Cost:  Ask the following three questions: 
- How difficult was this to write?   
- How hard is it to understand?
- How expensive will it be to change? (Which also take how hard to understand in consideration)

DRY has cost.  I think we should understand why we doing things (value/cost), instand of just follow a convention. 

### How to right fast clean code 
When writing code or code review in the early stage, no need to chase the most abstract or optimized code (while I consider "beautiful" or "smart" which could be totally not necessary) with a lot of guess for future or digging in the past experience, as long as it has a clean interface and readable, it should be benefit current progress and future changeability 
`The goal is to use green to maximize your understanding of the problem and to unearth all available information before committing to abstractions.`

### Test Test Test
If you want to go fast, Test can be the only thing you want to spend time on. After full suite of test, you can refactor as you wish or decide it is good enough

### What to test? 
Define a ABC threshold score for your project then you don't need to test method that under your threshold. :) 
