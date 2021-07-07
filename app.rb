require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end 

  get '/square/:number' do
    @sq_num = params[:number].to_i 
    "#{@sq_num * @sq_num}"
  end 

  get '/say/:number/:phrase' do
    @final = ''
    @num = params[:number].to_i
    @phrase = params[:phrase]

    @num.times do
      @final += @phrase
    end 
    @final
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 

    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    @final_word = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
   
  end 

  get '/:operation/:number1/:number2' do

    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add" 
      @total_op = @number1 + @number2
    elsif @operation == "subtract" 
      @total_op = @number1 - @number2
    elsif @operation == "multiply"
      @total_op = @number1 * @number2
    elsif @operation == "divide"
      @total_op = @number1 / @number2
    end 

    "#{@total_op}"

  end 

end