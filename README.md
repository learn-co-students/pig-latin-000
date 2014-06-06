---
tags: ruby, strings, arrays, include?, split, join, enum, enumerable
languages: ruby, rb
resources: 2
---

##Pig Latin Translator
Larry Page just sent Flatiron School this email,
>Google is in desperate need for a ruby Pig Latin Translator.  Google Translate might as well be a joke without it.  People are flooding to Bing and Alta Vista for all their Pig Latin needs.  We need a method called `to_pig_latin` that can accept a string as an argument.  Google Translate can translate whole paragraphs, so the method must be able to translate every word into Pig Latin. However, there are a few words that are the same in Pig Latin as they are in English.  They are: I, me, to, too, a, an, in, and, and on.  In case you guys didn't know words that begin with a consonant move all the consonants from before the first vowel to the end and add an 'ay', so 'happy' becomes 'appyhay' and 'glove' becomes 'oveglay'. For vowels all you need to do is add 'ay' to the end of the word, so 'egg' becomes 'eggay'.  We're gonna need that ASAP so we can allow our driverless cars to accept instructions in Pig Latin.
> <3 Larry

To make this method for Mr. Page you're going to need to make a method that,
- Make a method called `to_pig_latin`
- Accepts a string as an argument
- Can check whether or not a word from this list gets translated
  - `["i", "me", "to", "too", "a", "an", "in", "and", "on"]`
- Translates words that start with consonants correctly
  - "happy" → "appyhay"
  - "glove" → "oveglay"
- Translates words that start with vowels correctly
  - "egg" → "eggay"

Some helpful methods would be,
- [`include?`](http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-include-3F) which checks whether or not the argument is in the object
  - works on strings and arrays
  - `[ "a", "b", "c" ].include?("b")   #=> true`
- [`split`](http://www.ruby-doc.org/core-2.1.2/String.html#method-i-split) which divides a string into pieces and returns an array of those pieces
  - without an argument `split` divides a string by every white space
    - `" now's  the time".split        #=> ["now's", "the", "time"]`
  - with an argument `split` divides a string based on that argument
    - ` " now's  the time".split("")   #=> [" ", "n", "o", "w", "'", "s", " ", " ", "t", "h", "e", " ", "t", "i", "m", "e"]`
- [`join`](http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-join) which takes every item in an array and makes a string out of them
  - without an argument `join` will create a string of every item next to one another
    - `[ "a", "b", "c" ].join        #=> "abc"`
  - with an argument `join` will space every item in the string with that argument between them
    - `[ "a", "b", "c" ].join("-")   #=> "a-b-c"`


Now that you're prepared
- Fork and clone this repo
- Checkout a solution branch
- Get all the rspec tests to pass
- Push back to Github and sumbit a pull request