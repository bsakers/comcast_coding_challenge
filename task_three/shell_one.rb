class Apple
  attr_reader :variety, :origin, :history
  def initialize(**args)
    @variety = args[:variety]
    @origin = args[:origin]
    @history = args[:history]
  end
end

apple = Apple.new(variety: 'Honeycrisp', origin: 'Minnesota', history: 'Introduction to Market: 1991')

require 'yaml'

File.open('copyapple.txt', 'wb') {|f| f.write(YAML.dump(apple)) }
