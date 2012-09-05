class CreateUserTranslations < ActiveRecord::Migration
    def up
      User.create_translation_table!({
        :username => :string,
        :first_name => :string,
        :last_name => :string,
        :email => :string,
        :password_hash => :string,
        :password_salt => :string
      }, {
        :migrate_data => true
      })
    end
    def down
      User.drop_translation_table! :migrate_data => true
    end
  end
