class Course < ActiveRecord::Base
  attr_accessible :description, :name
  has_many:lessons
  translates  :description, :name
  
  
    class Translation
    attr_accessible :locale
  end
end
