# Blocks and Procs

# class BlockThing

#   def method_with_no_block(block)
#     puts "JUST A VAR : #{block}"
#   end

#   def method_with_block(&block)
#     puts "NOW IT IS A BLOCK : #{block}"
#     block.call
#   end

#   def method_with_block_and_var(var, &block)
#     internal_var = "You did not need this."
#     block.call(var, internal_var)
#   end
# end


class MyProgram

  def config(&block)
    @config = {}
    block.call(@config)
  end

  def print_config
    puts "HERE YOU GO!"
    puts @config
  end
end

prog = MyProgram.new

prog.config do |apple|
  apple[:thing1] = 1
  apple[:thing2] = 2
end

  prog.print_config

