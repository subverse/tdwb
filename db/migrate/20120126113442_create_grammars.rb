class CreateGrammars < ActiveRecord::Migration
  def change
    create_table :grammars do |t|
      t.string :name, :null => false
      t.text :info

      t.timestamps
    end
    
    add_index :grammars, :name, :unique => true
        
  end
end
