SimpleNavigation::Configuration.run do |navigation|  

   navigation.items do |primary|
        primary.item :guest, 'Produkty',guest_index_path,:class=>"button" do |secondary|        
         if @courses #by uniknac bledu pustej tablicy
           @courses.each do|course|
             secondary.item course.id, course.name, course_path(course) ,:class=>"button" do |third|
              
              if @lessons 
                @lessons.each do |lesson|
                 third.item lesson.id,lesson.name, course_lesson_path(course,lesson) , :class=>"button" do |fourth|
                  
                  if @pages 
                   @pages.each do |page|
                    fourth.item page.id, page.name, course_lesson_page_path(course,lesson,page), :class=>"button"
                   end
                  end
                 end
                 
                end
              end 
             end  
            end
           end  
          end  
          
          
          
          
              
        
        primary.item :guest2, 'O nas', guest_about_us_path,:class=>"button" do |secondary|
          secondary.item :guest3, 'kontakt', books_history_path ,:class=>"button"
        end   
   end 
end
