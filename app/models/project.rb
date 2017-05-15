class Project < ApplicationRecord

    #将多选值变量数组化
	serialize :DevelopBy, Array
	serialize :TestBy, Array
    


	

	validates :title, presence: true,
					  length: {minimum: 5}


   


end

