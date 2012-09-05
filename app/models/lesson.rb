class Lesson < ActiveRecord::Base
  attr_accessible :description, :name,:course_id
  belongs_to :course
  has_many :pages
   
    translates  :description, :name
  
  
    class Translation
    attr_accessible :locale
  end
  
   
  
end
