class CB2::Stub
  attr_accessor :allow

  def initialize(options)
    @allow = options.fetch(:allow)
  end

  def open?
    !allow
  end

  def open!
    @allow = false
  end

  def close!
    @allow = true
  end
end
