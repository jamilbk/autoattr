module AutoAttr
  def method_missing(method, *args, &block)
    if method.to_s.include? "="
      attr = method.to_s.sub('=','')
      self.class.class_eval { attr_accessor attr.to_sym }
      instance_variable_set "@#{attr.to_s}", args[0]
    else
      super(method, *args, &block)
    end
  end
end
