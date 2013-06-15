class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|

      t.string  :name
      t.string  :file
      t.references :album
      t.references :user

     end 
  end
end
