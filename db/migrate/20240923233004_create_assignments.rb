class CreateAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :assignments do |t|
      t.string :name
      t.date :due_date
      t.text :description

      t.timestamps
    end
  end
end
