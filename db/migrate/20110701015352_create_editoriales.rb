class CreateEditoriales < ActiveRecord::Migration
  def self.up
    create_table :editoriales do |t|
      t.string :codigo, :limit => 2, :unique => true
      t.string :nombre, :limit => 100, :unique => true
      t.boolean :disponible

      t.timestamps
    end
  end

  def self.down
    drop_table :editoriales
  end
end
