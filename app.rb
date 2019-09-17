require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name}".reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i*params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase] * params[:number].to_i
    @phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = [params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]]
    @words.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation].to_s
      if @op == "add"
        (params[:number1].to_i + params[:number2].to_i).to_s
      elsif @op == "subtract"
        (params[:number1].to_i - params[:number2].to_i).to_s
      elsif @op == "multiply"
        (params[:number1].to_i * params[:number2].to_i).to_s
      elsif @op == "divide"
        (params[:number1].to_i / params[:number2].to_i).to_s
      else
        nil
      end

    
  end



end