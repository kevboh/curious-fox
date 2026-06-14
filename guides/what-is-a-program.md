# What is a program?

A program is a set of instructions that solve a human problem. The instructions are read and then executed—“interpreted”—by one or more computers. These instructions are written in a special grammar we call a programming language. Programming languages aren’t like spoken languages; instead, they more closely resemble terse series of statements, full of symbols and keywords. This is why we often call it code.

Programmers write code to form a program, then execute that program to do some job. The program may execute one time in a fraction of a second, perhaps to solve some math equation, or it may run in a loop forever and respond to some incoming signals, like how many websites are made.

Here is a very simple program in JavaScript, a programming language you can run in your browser right now:

```javascript
console.log("Hello, world!");
```

This is code. In this case it shows the words `Hello, world!` to whoever executes the program. This is a very common way to show someone a new programming language, common to the point of ritual.

In this example, `console.log` is a **function**. A function is like a little program within our larger program: if you “call” it by giving it some data it will execute and then “return.”

In this case we’re calling `console.log` with an **argument**. An argument is any single piece of data you give to a function. Our argument here is `"Hello, world!"`.

In JavaScript, the parentheses after `console.log` indicate that the function should be called. So, to map it out:

```javascript
console.log                     // given the function console.log
           (                    // call it, begin argument list
            "Hello world!"      // with "Hello, world!" as its first argument
                          )     // end argument list
                           ;    // end this line of code
```

Those `//`, by the way, are how you start a **comment** in JavaScript. Comments are a way for programmers to leave notes for themselves or others within the code of a program. They are extremely useful, and you will see many of them in the code of this project.

These building blocks—functions, arguments, and comments—are the three main components that make up most programs in the world. Some might argue that there is a fourth fundamental building block: the **object**. While I was taught programming in terms of objects, I now believe they mostly serve to confuse readers and writers of programs, even experienced ones. You are of course free to read about [Object-oriented programming](https://en.wikipedia.org/wiki/Object-oriented_programming) in your own time, but I won’t explain it here.

CuriousFox is written in Elixir, a different programming language from JavaScript. In Elixir the program we just walked through could be written as:

```elixir
IO.puts("Hello, world!")
```

This does the exact same thing even though it looks different! We’ll cover [why there are many programming languages](./why-so-many-languages.md) elsewhere, but I wanted to show that even though programming languages may differ in many ways, once you understand how to read code you can puzzle your way through any language.

Let’s make our own function in Elixir. It will help us discuss one final point.

```elixir
# In Elixir, functions begin with “def”.
# They have a name followed by their arguments in parentheses.
# Their “body”—what the function does—is between the “do” and “end”.
def greet_by_name(greeting, name) do
  full_greeting = "#{greeting}, #{name}!" # Form the greeting
  IO.puts(full_greeting) # Show it to someone
  :ok # Return some indicator of success
end
```

- We have a function `greet_by_name` that takes two arguments, `greeting` and `name`.
- It combines them together into a single value that contains the greeting, then a comma, a space, the name, and an exclamation point.
- It calls the `IO.puts` we saw earlier.
- It returns `:ok`—in Elixir the final line of a function is its return, and a word preceded by a colon is a kind of symbol used as a shorthand, `:ok` being a common way to say something worked.

Here are some examples of calling this function:

```elixir
greet_by_name("Hello", "world") # prints "Hello, world!", returns :ok
greet_by_name("Greetings", "friends") # prints "Greetings, friends!", returns :ok
greet_by_name("Turn back", "adventurer") # prints "Turn back, adventurer!", returns :ok
```

Here is where I admit that I played a little trick when I divided the world of programming into functions, arguments, and comments. While functions and comments are fairly simple ideas—functions perform some, well, _function_ on arguments, and comments act as signposts for readers—I hid away a ton of variety within the word “arguments.” In reality an argument to a function can be data in many different shapes and sizes. So far we’ve been working with _strings_, which is what programmers call bits of text like words or sentences. Anything inside double quotes is a string, like `"this"`.

There are many other types of data that you can use as arguments. Here are some in Elixir:

- Booleans, which is what programmers call the value that is either `true` or `false`.
- Numbers, like `123` and `456.78`.
- Lists, like `[1 2 3 4]`. Lists are enclosed with square brackets and are a very common way to work with sets of data.
- The nothing value! In Elixir this is `nil`. It may be surprising that in programs we sometimes need to represent the concept of nothing, but this turns out to be a very common needs.

So while the world is made up of functions, arguments, and comments, know that within these ideas live many different shapes. The work of learning to program is really learning these many shapes and then going further: learning how to combine them in ways that work well, solve human problems, and—when you’re at your best—are readable to others, conceptually sound, and visually elegant.
