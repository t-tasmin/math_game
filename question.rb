class Question

  def generate
    num1=rand(1..10)
    num2=rand(1..10)
    puts "What does #{num1} plus #{num2} equal?"
    answer = num1+num2
  end  

end