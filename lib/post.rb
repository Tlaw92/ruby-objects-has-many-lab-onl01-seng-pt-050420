class Post 
  
  post_list = []
  
  attr_accessor :author, :title 
  
  def initialize(name)
    @name = name 
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