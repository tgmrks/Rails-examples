def my_method(&my_block)
  puts 'in the method'
  my_block.call
  my_block.call
  puts 'back in the method'
end

my_method do 
 puts 'in the block'
end

my_method do
 puts 'woo hoo'
end

#passing parameters to a block
def give(&block)
  block.call('money','jewelry')
end

give do |present1, present2|
  puts present1, present2
end
