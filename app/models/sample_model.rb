
class Answers
  attr_accessor :answer
  def initialize(params)
    @params = params
    @answer = {
      :social => 0,
      :political => 0,
      :environmental => 0,
      
      }
      

      
    activity
    activist
    ambition
    traits
    

  
  end
  
  

  def activity
    if @params[:activity] == "Cleaning the environment to maintain healthy surroundings"
      @answer[:environmental] += 1
     elsif @params[:activity] == "Distributing campaign materials"
      @answer[:political] +=1
    elsif @params[:activity] == "Participating in a protest march for human rights"
      @answer[:social] += 1
     
   
    end
  end

  def activist
    if @params[:activist] =="Nelson Mandela"
      @answer[:political] += 1
    elsif @params[:activist] == "Malala Yousafzai"
      @answer[:social] +=1
    elsif @params[:activist] == "Mark Ruffalo"
      @answer[:environmental] += 1
      
    end
  end

  def ambition
    if @params[:ambition] =="Veterinarian"
      @answer[:environmental] += 1
    elsif @params[:ambition] == "A politician"
      @answer[:political] +=1
    elsif @params[:ambition] == "Humanitarian"
      @answer[:social] += 1
       
    end
  end

  def traits
    if @params[:traits] =="Caring, sincere, thoughtful"
      @answer[:social] += 1
    elsif @params[:traits] == "Encouraging, confident, independent"
      @answer[:political] +=1
    elsif @params[:traits] == "Outspoken, humble, loyal"
      @answer[:environmental] += 1
  end
end




  

  
     def results
    #calculate your points to figure out which type of activism
    final = @answer.values
    max = final.max
    result =""
    #looking through the hash for matches
    @answer.each do |field,score|
      if score == max
        result = field.to_s
      end
    end
    result
  end
  def get_results(string)
    if string=="social"
      @social
      elsif string =="political"
      @political
      elsif string == "environmental"
      @environmental
    end
  end


end #end of class
 










