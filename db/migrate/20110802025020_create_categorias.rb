class CreateCategorias < ActiveRecord::Migration
  def self.up
    create_table :categorias do |t|
      t.string :nombre, :limit =>150, :unique => true
      t.boolean :disponible

      t.timestamps
    end
  end

  def self.down
    drop_table :categorias
  end
end
