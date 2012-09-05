class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :content
      t.integer :lesson_id

      t.timestamps
    end
  end
end
