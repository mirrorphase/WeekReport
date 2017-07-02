class CreateWeeklyReports < ActiveRecord::Migration[5.0]
  def change
    create_table :weekly_reports do |t|
      t.integer :year
      t.integer :week
      t.integer :projectid
      t.decimal :progress
      t.string :remark
      t.string :reporter

      t.timestamps
    end
  end
end
