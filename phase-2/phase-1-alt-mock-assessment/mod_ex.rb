module Mod1
	def print_mod1
		puts "printed from mod1"
	end
end

module Mod2
	def self.print_mod2
		puts "printed from mod2 #{self}"
	end

	class Newclass
		def print_from_nested			
		end
	end
end

# case 1
# Mod1.print

class Klass
	include Mod1

	def banana
		puts "Printig from the class"
	end

	def Klass.method_self_class
		puts "printed from class #{self}"
	end
end

# # case 2
k = Klass.new
k.banana
k.print_mod1
# k.print_mod2

Klass.method_self_class
# Klass.print_mod2

Mod2.print_mod2
p Mod2::Newclass.new