class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :slack_link
      t.string :github_link
      t.string :replit_link
      t.string :class_name
      t.boolean :active

      t.timestamps
    end
  end
end
