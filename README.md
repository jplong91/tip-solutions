### 🎭 TIP Solutions 🎭
## 📖 Problem Sources 📖
- Algorithm ladder: https://trello.com/b/smxNsfu6/algorithm-ladder

## 🧮 How to effectively practice algorithms and use solutions as a resource 🧮
- Engage with problems that are appropriately difficult for you, or help build muscle memory
- Solve any given problem on your own first, in its entirety
- I repeat, DO NOT JUST LOOK AT SOLUTIONS BEFORE SOLVING THE PROBLEM!! (Otherwise you don't learn/practice anything)
- Think about runtime complexity (Big O Notation) and spacetime complexity as you solve problems
  - Don't paralyze yourself trying to achieve optimal code, just have an awareness for the code you are writing!
- Use these solutions, or other solutions you find, as a way to expand your thinking about how others might solve a problem in a different way

## 🪢 What to think about when choosing loop type(s) (Ruby) 🪢
Wanted to share my personal decision making process when I'm thinking about what kind of loop I might solve a problem with...

🧚 HEY, LISTEN! my #1 takeaway is to clearly define your input and output variable types before solving the problem. This is key information when determining which type of loop to use

`while` and `each` loops are generally your best friends when _whiteboarding_ due to their flexibility

Some thoughts that go through my head when algo solving:
- is the input an array/hash with the exact same length as the expected output? `.map` could be a hero here
- is the output a _single_ integer, string, or array value that is constructed while iterating over some type of input data? `.reduce` is looking mighty fine
  - `.each_with_object` is another valuable loop that is similar to `.reduce`, but focus on `.reduce` _first_
- am I _selecting_ some values from the initial array/hash and discarding the rest? `.select`
- do I need to iterate over _each_ item in an array to do X thing, you guessed it, `.each`
- am I keeping track of an index manually, despite any other logic going on? `.while`,
  - sometimes `.each_with_index` will do the trick
- might I want to quit the loop early upon some condition being reached? `.while`
- am I bouncing around to abnormal indices (not looping through every value in an array/hash)? `.while`

There are many more available array loops in Ruby found here: https://ruby-doc.org/core-2.7.0/Array.html
That said, it's extremely important that you know how to write out code the "long-hand" way, using `.each` or `.while` loops as they better express your understanding of loop fundementals

Fwiw, in enterprise-level Ruby code, the most frequent loops you will likely see are `.each` and `.map`

## 🎱 When to use Google 🎱
This is a frequently asked question. When is it OK to Google in an interview?

_It depends on the interview_.

Some folks will let you Google to your heart's desire, others will not let you Google at all (or rather highly encourage you _not_ to)


So here are my tips surrounding the usage of the Google monster (as it pertains to whiteboarding):
- Try your _best_ not to Google anything
- Pseudocode the problem on your own before looking up syntax.
  - You should need Google even _less_ while pseudocoding
- If you "know there is a Ruby method that solves the problem but can't think of it", then solve the problem the long-hand way. This is partially why long-hand solutioning is vital.
- _Once you've found a solution to the problem,_ it becomes much more OK to Google code improvements, etc
- Try to Google _specific_ things: "how to get a digits array from an integer?" or "ruby reduce syntax". If you did this in an interview, you would be expressing that you know and understand the _logic_ but you just need the _syntax_
- Very bad Google examples "how to solve fizzbuzz" or "most efficient way to do X". Don't do this in an interview

Yes, I use Google for day-to-day job work. Yes, it is a helpful resource. But you should not be reliant on it for _most_ algo problems. Especially because you want to show off the knowledge in your brain during an interview!
