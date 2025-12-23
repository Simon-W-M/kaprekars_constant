# kaprekars_constant
A silly function to iterate through to find Kaprekars Constant

## What is it?

Even if you flunked basic algebra, become enraged at the sight of long division, or get stressed out by calculating a 20% tip for your restaurant bill, you may find yourself fascinated to explore the weird, wild world of 6174 — the four-digit sequence otherwise known in smart-people math circles as "Kaprekar’s Constant."

Here are the basics of Kaprekar’s Constant:

1. Start off with a four-digit number. "The conditions are that it has to have four digits, and these four digits mustn’t be the same," says University of Nottingham physics professor Roger Bowley. "So you have to choose maybe three of the same and one different—or all different. It doesn’t really matter. But you don’t choose 1111 or 0000."
   
3. Rearrange those four digits in order from highest to lowest (9821) — and then again, from lowest to highest (1289). Then subtract the second number from the first number (9,821-1,289).

4. Repeat that same process until you reach 6,174. (In this case, Bowley’s initial subtraction left him with 8532. That number is already in order from highest to lowest, and the opposite order is 2358. That subtraction leaves us with—you guessed it — 6,174.

"Kaprekar must have had more time on his hands than anybody else if he’s going to be playing with numbers to try and find something like this," Bowley says. "But that’s what mathematicians do, and I think it’s beautiful."

## What have I done

Utilising a while loop, it splits out the numbers, does the sorting and then puts them back togther again and does the math.  

Had fun trying to work out how to sort the numerics and also take into account leaing zeros

It shows the stages of each iteration until it comes up with the answer.  

##  Weird

Sometimes it only takes 1 iterations and sometimes many more.  

## Loopy

Ran it through a loop to try all iterations from 1000 to 9998
Had to test to see if all numbers are same otherwise the while loop would loop for infinity

## Results

So in conclusion the number of iterations follows a really weird pattern
Also the maximum number of iterations is 7 but that is not the most frequent (which is 3)

## Conclusion

Really interesting little thing of no use whatsoever, but fun to build anyways



I then chucked the function in a loop 
