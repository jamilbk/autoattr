autoattr
========

Override Ruby's method_missing? on attr_writer to dynamically add attr_accessible to a class.

Include at the top of the class like so:

```ruby
class Hello
  include AutoAttr
end
```

Class Hello will now have dynamic attr_accessors triggered by attr_writer-style calls. For example:

```ruby
foo = Hello.new
foo.hello_world = "hello world"
foo.hello_world
  => "hello world"
```

Keep in mind attr_reader-style calls will still trigger method missing until you assign them:

```ruby
foo = Hello.new
foo.should_be_nil
  => nil
```
