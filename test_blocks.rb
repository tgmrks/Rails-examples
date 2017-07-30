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

#trying YIELD
def say(&block)
  yield
end

say do
  puts "saying sth out loud"
end

def say_par(&block)
  yield 'hi', 'there'
end

say_par do |word1, word2| 
  puts "#{word1} #{word2}"
end
