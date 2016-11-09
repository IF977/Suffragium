class AddNameToCandidatos < ActiveRecord::Migration
  def change
    add_column :candidatos, :name, :string
    add_column :candidatos, :numero, :string
    add_column :candidatos, :partido, :string
  end
end
