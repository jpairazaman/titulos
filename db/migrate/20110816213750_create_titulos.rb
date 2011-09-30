class CreateTitulos < ActiveRecord::Migration
  def self.up
    create_table :titulos do |t|
      t.string :codigo, :limit => 15, :null => false
      t.string :nombre, :limit => 150, :null => false
      t.string :abreviado, :limit => 50, :null => false
      t.references :editorial, :null => false
      t.references :categoria, :null => false
      t.boolean :disponible, :default => true 

      t.timestamps
    end
  end

  def self.down
    drop_table :titulos
  end
end
