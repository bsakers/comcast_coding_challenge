class Apple
  attr_reader :variety, :origin, :history
  def initialize(**args)
    @variety = args[:variety]
    @origin = args[:origin]
    @history = args[:history]
  end
end

require 'yaml'

apple = YAML.load(File.read('copyapple.txt'))
