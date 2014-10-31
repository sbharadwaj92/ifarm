class AddPaperclipToLanguage < ActiveRecord::Migration
  def change
    add_attachment :languages, :image
  end
end
