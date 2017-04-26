class RenameColumnType < ActiveRecord::Migration[5.0]
  def change
  	rename_column :projects, :project_type, :string
  end
end
