class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string  :title,           :null => false
      t.string  :web,             :null => false
      t.integer :linkcategory_id, :null => false
      t.text    :info

      t.timestamps
    end
    
    add_index :links, :title, :unique => true
    add_index :links, :web,   :unique => true
    
  end
end
