class Page < ActiveRecord::Base
  attr_accessible :content,:lesson_id,:name
  belongs_to :lesson
end
