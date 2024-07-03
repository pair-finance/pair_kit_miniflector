# PairKit::Miniflector 

This gem helps to build custom DSL. More documentation coming later.

---
**NOTE**

More documentation coming soon.

---

## Usage 
   
In your gemfile 

```ruby

gem 'pair-kit-miniflector'

```

In your code 

```ruby

require 'pair_kit/miniflector'

```


## Example

```ruby
PairKit::Miniflector.camel_case('Hell World') # => 'helloWorld'

PairKit::Miniflector.kebab_case('Hell World') # => 'hello-world'

PairKit::Miniflector.pascal_case('Hell World') # => 'HelloWorld'

PairKit::Miniflector.snake_case('Hell World') # => 'hello_world'

PairKit::Miniflector.screaming_snake_case('Hell World') # => 'HELLO_WORLD'

PairKit::Miniflector.screaming_kebab_case('Hell World') # => 'HELLO-WORLD'
```


