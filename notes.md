# Learning Notes

## Motivation
Why I do this is because I want to learn more about OOP design through a gem. A gem I trust that does good OOP design practice.
Why use `tty-prompt` gem? I need to start somewhere nonetheless. But aside of that, I like the motivation from the author on why he created the gem   
`https://piotrmurach.com/articles/nobody-cares-about-your-software/`

## OOP Design Stuff I Learned
#### Using Composition Instead of Inheritance
`TTY::Prompt` class is the main class, and there are subclasses under it that handle different feature cases (responsibilities). The exposed API's from the `Prompt` class will delegate to the relevant subclass, sending itself `self` so the subclass can call the parent shared methods.

One thing I also found is in the `Prompt` class, there are 2 group of methods under the same public space. One are the methods that are meant to be used outside, the real APIs. And the second group of methods are the shared methods meant to be used by `Prompt` subclasses.

## Misc Notes that I Learned Along the Way
Opening the gem, use `bundle open GEM`. And don't forget to pristine it when done `bundle pristine [...GEMS]`  
When opening a bundle gem, you need to set an editor to open:
```
vi ~/.bashrc or ~/.zshrc or whatever you have:
export EDITOR=vim
```

Ruby object dot parantheses notation   
it's basically a shorthand for the lambda call method
```ruby
class TestServiceObject
  def call(foo=nil)
    foo || 'method'
  end
end

TestServiceObject.new.()
#=> method
TestServicesObject.new.('bar')
#=> bar
```
