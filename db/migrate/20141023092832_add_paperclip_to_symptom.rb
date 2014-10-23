class AddPaperclipToSymptom < ActiveRecord::Migration
  def change
    add_attachment :symptoms, :image
  end
end
