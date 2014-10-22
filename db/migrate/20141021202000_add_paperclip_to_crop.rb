class AddPaperclipToCrop < ActiveRecord::Migration
  def change
    add_attachment :crops, :image  
  end
end
