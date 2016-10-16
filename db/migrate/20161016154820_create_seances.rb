class CreateSeances < ActiveRecord::Migration
  def change
    create_table :seances do |t|
      t.string :titre
      t.text :contenu
      t.string :url_video
      t.string :url_question

      t.timestamps null: false
    end
  end
end
