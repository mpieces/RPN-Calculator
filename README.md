# RPN-calculator
Reverse Polish Notation Calculator

### Description
This CLI-based app simulates a Reverse Polish Notation Calculator. I have also included a few RSpec tests. Although I've written CLI-based apps in Node.js and JS, I chose to use Ruby, as it is the language I have been working with for the past few months. As far as my architectural choices, I chose to use a loop, an iterator, and a conditional 'if' statement in order to get the result. I debated whether or not to use a case/switch statement, but opted to just use an 'if' statement as I don't think either is more performant in terms of speed and big O notation. After I understood how an 'RPN' Calculator actually worked, I wrote out in pseudocode, the steps I planned on executing, in order to start with a framework. If I had more time, I would definitely spend more time on better error handling, maybe with custom error classes. I don't know if I really need the extra String class, but it seemed to work really well for validating if a user's input was either an integer or a float. Testing came as a challenge: I initially thought it would be simple to add RSpec tests, but as I researched further, I realized that RSpec and CLI-based apps don't go together very well, some sources even saying to use Aruba without Cucumber but with RSpec, but I didn't have enough time to dig into that. I did learn some more about testing standard input and output with one source, which I cited in my code, and that was very helpful. Overall, I know my solution could be made more concise, but I feel that this is legible and easy to understand. 

### Usage

> Since this application was built using `ruby` you need to make sure you have it installed. You can follow the [instructions here](https://www.ruby-lang.org/en/documentation/installation/) depending, on your operating system, to install it.
> I used `ruby version 3.0.0`.

To run the application, first, in your terminal run the following command to clone this repo:

```sh
$ git clone https://github.com/mpieces/RPN-calculator.git
```

Then access the folder with:

```sh
$ cd RPN-calculator/
```

Now, run the entry point of the app with the next command:

```sh
$ ruby lib/calc.rb
```

At this point you should see "RPN Calculator" in your terminal. 🎉🎉🎉
To use it, enter 1+ numbers (separated by spaces) and then either hit 'Enter' or add operators after the numbers. 
Ex: 

### Test suite

First, you need to make sure you have [RSpec](https://relishapp.com/rspec/docs/gettingstarted) installed. As mentioned before, once you have `ruby` installed in your system, installing `RSpec` is pretty straightforward. Just run the following command inside the root folder of the application:

```sh
$ gem install rspec
```

Once your have `RSpec` on your system, just execute the following command to run the tests:

```sh
$ bundle exec rspec
```
