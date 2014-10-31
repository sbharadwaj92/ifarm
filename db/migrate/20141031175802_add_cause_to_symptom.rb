class AddCauseToSymptom < ActiveRecord::Migration
  def change
    add_column :symptoms, :cause, :text
  end
end
