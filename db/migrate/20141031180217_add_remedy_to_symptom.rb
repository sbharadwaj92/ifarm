class AddRemedyToSymptom < ActiveRecord::Migration
  def change
    add_column :symptoms, :remedy, :text
  end
end
