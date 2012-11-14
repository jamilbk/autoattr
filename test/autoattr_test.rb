require 'test/unit'
require './lib/autoattr' 

class AutoAttrTest < Test::Unit::TestCase
  include AutoAttr

  def test_attr_accessor
    self.hello_guys = 'hello guys!'
    assert self.hello_guys == 'hello guys!', "Testing attr_writer uses method_missing to attr attr_accessor to class."
  end

  def test_retrieves_nil
    assert self.should_be_nil == nil, "Testing attr_readers are nil before attr_writer is called."
  end
end
