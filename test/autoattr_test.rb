require 'test/unit'
require './lib/autoattr' 

class AutoAttrTest < Test::Unit::TestCase
  include AutoAttr

  def test_attr_accessor
    self.hello_guys = 'hello guys!'
    assert self.hello_guys == 'hello guys!', "Testing attr_writer uses method_missing to attr attr_accessor to class."
  end

  def test_retrieves_nil
    assert_raise NoMethodError do
      self.should_raise_nomethoderror
    end
  end
end
