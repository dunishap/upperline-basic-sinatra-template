require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
 post '/results' do
   p params
   person = Answers.new(params)
   @answer = person.results
   p @answer
   @final_array = person.get_results(@answer)
  if @answer == "political"
    erb :political
    elsif @answer == "social"
    erb :social
    elsif @answer == "environmental"
    erb :environmental
    end
  end

  post '/activism_info' do
    return erb :activism_info
  end 
 post '/contact_info' do
    return erb :contact_info
  end 

end
