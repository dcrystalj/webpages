class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :description
      t.integer :examon
      t.integer :subjectid

      t.timestamps
    end
  end
end
