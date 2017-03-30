#write your code here
def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(arry)
	total = 0
	if arry == [] 
		return 0
	else
		arry.each{|x| total +=x }
		total
	end
end

def multiply(arry)
	total=1
	if arry.length<2
		return "arry must greater or equal to 2"
	else
		arry.each {|x| total *= x }
		total
	end
end

def power(num1,num2)
	num1 ** num2
end

def factorial(num)
	total=1
	if num == 0
		return 1
	else
		while num >=1
			total *= num
			num -=1
		end
		total
	end
end
