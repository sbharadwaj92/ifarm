class AddPaperclipToDevelopment < ActiveRecord::Migration
  def change
    add_attachment :developments, :image
  end
end
