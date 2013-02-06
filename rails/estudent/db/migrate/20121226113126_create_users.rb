class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :ids
      t.string :name
      t.string :mail
      t.string :passwd
      t.integer :status
      t.string :surname

      t.timestamps
    end
  end
end
