class Project < ApplicationRecord

    #将多选值变量数组化
	serialize :DevelopBy, Array
	serialize :TestBy, Array

	self.table_name = "projects"
	self.primary_key = "id"

	has_many :Weekly_reports, :foreign_key => 'projectid'

	default_scope { order(updated_at: :desc) }

	
	

	validates :title, presence: true,
					  length: {minimum: 5}


   


end

