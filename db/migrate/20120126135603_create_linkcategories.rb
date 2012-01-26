class CreateLinkcategories < ActiveRecord::Migration
  def change
    create_table :linkcategories do |t|
      t.string :name, :null => false
      t.text :info

      t.timestamps
    end
    
    add_index :linkcategories, :name, :unique => true
        
  end
end
