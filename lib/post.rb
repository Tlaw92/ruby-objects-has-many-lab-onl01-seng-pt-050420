class Post 
  
  @@all = []
  
  attr_accessor :author, :title 
  
  def initialize(title)
    @title = title 
    @@all << self 
  end  
  
  def author=(author)
    @author = author 
    author.posts << self
    Author.post_count +=1
  end   
  
  def author
    @author
  end 
  
  def self.count 
    @@post_list.length 
  end   
  
  def self.all 
    @@all 
  end   
  
end   




































#class Post
#   attr_accessor :author, :title 

#   def initialize(title)
#     @title = title
#   end

#   def author_name
#     if author 
#       self.author.name 
#     else
#       nil
#     end
#   end

# end 