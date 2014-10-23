class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.string :title
      t.text :text

      # this line adds an integer column called `article_id`.
      t.references :crop, index: true

      t.timestamps
    end
  end
end
