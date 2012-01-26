class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :name, :null => false
      t.string :code, :null => false, :limit => 5
      t.string :web
      t.text   :info

      t.timestamps
    end
    
    add_index :sources, :name, :unique => true
    add_index :sources, :code, :unique => true
    add_index :sources, :web,  :unique => true
    
  end
end
