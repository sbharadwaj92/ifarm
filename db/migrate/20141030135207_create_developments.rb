class CreateDevelopments < ActiveRecord::Migration
  def change
    create_table :developments do |t|
      t.string :title
      t.text :text

      # this line adds an integer column called `crop_id`.
      t.references :crop, index: true

      t.timestamps
    end
  end
end