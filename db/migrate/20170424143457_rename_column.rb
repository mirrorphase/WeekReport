class RenameColumn < ActiveRecord::Migration[5.0]
  def change
  	rename_column :projects, :text, :project_type
  end
end
