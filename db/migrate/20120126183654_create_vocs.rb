class CreateVocs < ActiveRecord::Migration
  def change
    create_table :vocs do |t|
      t.string :german,       :null => false
      t.string :wylie,        :null => false
      t.integer :source_id,   :null => false
      t.integer :grammar_id,  :null => false
      t.integer :category_id, :null => false
      t.text :info

      t.timestamps
    end
    
  end
end
