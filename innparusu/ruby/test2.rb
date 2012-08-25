# -*- coding: utf-8 -*-

class Greeter
  def initialize(name)
    @name=name
  end

  def name
    @name
  end

  def name=(new_name)
    @name=new_name
  end
end

g = Greeter.new("Barney")
puts g.name #=> Barney
g.name = "Betty"
puts g.name #=> Betty
