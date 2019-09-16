require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do 
    number = params[:number].to_i
    phrase = params[:phrase]
    phrase * number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    sentence = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{sentence}"
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if operation == "add"
      total = num1 + num2
    elsif operation == 'subtract'
      total = num1 - num2
    elsif operation == "multiply"
      total = num1 * num2
    else operation == "divide"
      total = num1 / num2
    end
    total.to_s
  end

end