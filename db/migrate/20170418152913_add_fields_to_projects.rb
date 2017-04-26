class AddFieldsToProjects < ActiveRecord::Migration[5.0]
  def change
  	add_column :projects, :type, :string
  	add_column :projects, :system, :string
  	add_column :projects, :DevelopBy, :string
  	add_column :projects, :TestBy, :string
  	add_column :projects, :ScheduledStartDate, :datetime
  	add_column :projects, :ScheduledFinishDate, :datetime
  	add_column :projects, :StartDate, :datetime
  	add_column :projects, :FinishDate, :datetime
  	add_column :projects, :Progress, :decimal
  	add_column :projects, :TestCaseRun, :integer
  end
end
