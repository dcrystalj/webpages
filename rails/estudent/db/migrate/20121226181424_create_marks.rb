class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.integer :subject
      t.integer :user
      t.integer :mark
      t.integer :year

      t.timestamps
    end
  end
end
