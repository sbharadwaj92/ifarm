class CreateCrops < ActiveRecord::Migration
  def change
    create_table :crops do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
