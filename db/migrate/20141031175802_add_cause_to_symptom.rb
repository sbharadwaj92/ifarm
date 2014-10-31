class AddCauseToSymptom < ActiveRecord::Migration
  def change
    add_column :symptoms, :remedy, :text
  end
end
