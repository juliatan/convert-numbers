Convert Numbers To Words
========================

This code is my first attempt at an answer to a technical test that I found 
online (I did this for my own practice). The challenge was to write a Ruby 
script that would convert every number from 1 (one) to 1,000,000 (one million) 
into words.

Technologies used
-----------------

* Ruby
* RSpec

How to use
----------

```shell
git clone git@github.com:juliatan/convert-numbers.git
cd convert-numbers
irb
require './lib/numbers_to_words'
(1..1000000).each { |num| puts convert(num) }
```

How to run tests
----------------

```shell
cd convert-numbers
rspec
```