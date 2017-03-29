class Hello
  attr_accessor :name
  def initialize(name = 'World')
    @name = name
  end

  def say_hello
    puts "Hello #{@name} !"
  end

  def say_byebye
    puts "Bye #{@name} :)"
  end
end

h = Hello.new('Loki')
  puts h
  puts h.inspect
  puts h.say_hello
  puts h.say_byebye


g = Hello.new
  puts g.say_hello
  puts g.say_byebye


g.name= 'AoNo'
  puts g.say_byebye
