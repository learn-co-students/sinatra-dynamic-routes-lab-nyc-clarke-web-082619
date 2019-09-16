require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reverse_name = params[:name]
    @reverse_name.reverse 
  end

  get '/square/:number' do
    @square_number = params[:number]
    (@square_number.to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    test = ""
    @number.to_i.times { test << @phrase }
    test
  end
  
end