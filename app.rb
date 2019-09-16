require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name]
    reversed = @user_name.split('').reverse.join
    reversed
  end

  get "/square/:number" do
    @num = params[:number].to_i
    (@num * @num).to_s
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @phrase_array = ''
    @number.times do
      @phrase_array += @phrase
    end
    @phrase_array
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    status 200
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    @sentence = [@word1, @word2, @word3, @word4, @word5].join(' ')
    @sentence += '.'
    @sentence
  end

  get "/:operation/:number1/:number2" do
    status 200
    @operator = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operator == 'add' 
      return (@number1 + @number2).to_s
    elsif @operator == 'subtract' 
      return (@number1 - @number2).to_s
    elsif @operator == 'multiply' 
      return (@number1 * @number2).to_s
    elsif @operator == 'divide' 
      return (@number1 / @number2).to_s
    end
  end

end