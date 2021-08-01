# instance-calculator
Inefficient Luau calculator that uses zero math operations internally, supporting both negative and positive integers

> **Warning:** This is purely a showcase project and there is no scenario in which it should ever be used commercially.

## What?

This module offers four of the most basic math operations: addition, subtraction, multiplication, and division. However, it unironically takes pride in its in its zero tolerance policy for the +, -, *, and / symbols. Because of the methods it uses to make these calculations, you willl notice that calculations often become unreasonably slow when using numbers larger than ~16 bits.

##  How?

The method is in the name. The main principle is getting the length of the table returned by calling GetChildren on a folder of instances. We can add an instance one by one until we reach a certain amount using a for loop, and we can do that again a different amount of times for a different amount. Finally, we check the amount of instances there are and that is your sum! This same concept is applied to the subtraction, multiplication, and division functions, just in slightly more complicated fashions. The hardest part, though, was adding unrestricted support for negative numbers. I ended up creating a class called <a href="https://github.com/twinrbx/instance-calculator/blob/main/src/Number.lua">Number</a> that stores the sign as either "Positive" or "Negative" in a property. I also ended up using a combination of string manipulation and tostring/tonumber to detect the sign of numbers and convert them between positive and negative with no math. I was going to implement support for non-integers, however after fiddling around for a bit I realized how difficult that would be without math. Lucky for you, the source is all available in this repository, and if you want to give adding decimals a shot––well, I wish you luck.

There is also a <a href="https://github.com/twinrbx/instance-calculator/raw/main/rbx/Demo.rbxm">demo LocalScript</a> included that creates an interface and buttons for you to play with the module without having to touch anything. I've also attached a <a href="https://www.roblox.com/games/7184159598/InstanceCalculator">demo game</a> for those who are nauseated at the sight of code.

##  Why?

Stan asked me to.

