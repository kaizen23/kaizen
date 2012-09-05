class CreateLessonTranslations < ActiveRecord::Migration
     def up
      Lesson.create_translation_table!({
        :name => :string,
        :description => :text,
        
      }, {
        :migrate_data => true
      })
    end
    def down
      Lesson.drop_translation_table! :migrate_data => true
    end
  end
