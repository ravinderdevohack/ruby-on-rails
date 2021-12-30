class RemoveAssemblyFromAssembliesPart < ActiveRecord::Migration[7.0]
  def change
    remove_column :assemblies_parts, :assembly, :string
    change_table :assemblies_parts, id: false do |t|
      t.belongs_to :assembly
    end
  end
end
