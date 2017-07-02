class WeeklyReport < ApplicationRecord
	self.table_name = "weekly_reports"
	self.primary_key = "id"

	belongs_to :project, foreign_key: "projectid"
	default_scope { order(week: :desc) }
	
end
