class CreateDeveloper < ActiveRecord::Migration[5.0]
  def change
    create_table :developers do |t|
    	t.string :developer_name
      
    end

    create_table :testers do |t|
    	t.string :tester_name
      
    end
  end
end
