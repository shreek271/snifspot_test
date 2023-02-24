class BaseProcessor
  attr_reader :params

  def initialize(params)
    @params = params
  end

  def self.call(*args, &block)
    new(*args, &block).execute
  end

  def execute
    raise NotImplementedError
  end
end