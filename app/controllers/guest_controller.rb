
class GuestController < ApplicationController
layout :layout_chooser

  def index
  @courses = Course.all
 
  end

  def about_us
  end

end    
