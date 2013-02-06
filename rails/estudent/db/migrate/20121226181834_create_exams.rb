class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.integer :subject
      t.integer :user

      t.timestamps
    end
  end
end
