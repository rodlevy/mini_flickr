class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|

      t.string  :name
      t.string  :file
      t.string  :photo
      t.references :album
      t.references :user

     end 
  end
end
