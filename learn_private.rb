class LearnPrivate

  def initialize(arg1, arg2)
    @arg1 = arg1
    @arg2 = arg2
  end

  def update(num)
    @arg1 = arg1 + num
    self
  end

  def sum
    arg1 + arg2
  end

  private

  attr_reader :arg1, :arg2
end

puts "UPDATE : #{LearnPrivate.new(1, 2).update(100)}"

puts "ARG 1 : #{LearnPrivate.new(1, 2).send(:arg1)}"

puts "SUM : #{LearnPrivate.new(1, 2).sum}"

puts "PRIVATE ARG 1 : #{LearnPrivate.new(1, 2).arg1}"