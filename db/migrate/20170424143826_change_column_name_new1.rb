class ChangeColumnNameNew1 < ActiveRecord::Migration[5.0]
  def change
  	rename_column :projects, :string, :project_type
  	change_column :projects, :project_type, :string
  end
end
